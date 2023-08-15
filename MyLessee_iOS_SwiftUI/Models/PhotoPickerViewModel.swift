//
//  PhotoPickerViewModel.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 15/08/2023.
//


import Foundation
import SwiftUI
import PhotosUI

//Means Singleton class, creaated only one instance of that class
@MainActor

final class PhotoPickerViewModel: ObservableObject {
    // Type of image is set to UIImage
    @Published var selectedImage: UIImage? = nil
    
    // Using PhotosPicker in ProfileView page will return object of type PhotosPickerItems
    @Published var imageSelection: PhotosPickerItem? = nil {
        //Every time that property Set new value --> do following:
        didSet{
            setImage(from: imageSelection)
        }
    }
    
    
    //MARK: - Method to convert PhotosPickerItem to UIImage
    private func setImage(from selection: PhotosPickerItem?){
        //if selection is nil --> don't do nothing and return
        guard let selection = selection else { return }
        
        //Otherwise if selection is NOT nil --> do Task
        Task{
            // trying to get data from selection and type should be Data.self
            if let data = try? await selection.loadTransferable(type: Data.self) {
                //Cast data to UIImage and if it successfull --> set UIImage to variable selectedImage
                if let castedImage = UIImage(data: data){
                    selectedImage = castedImage
                    return
                }
            }
        }///Task
        
    }
    
    
}
