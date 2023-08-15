//
//  PhotoPreviewView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 15/08/2023.
//

import SwiftUI
//MARK: - VIEW TO SHOW PREVIEW OF PHOTO CHOOSEN FROM ALBUM
struct PhotoPreviewView: View {
    var image: UIImage?
       
       var body: some View {
           VStack {
               if let image = image {
                   Image(uiImage: image)
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
               } else {
                   Text("No Image Selected")
               }
           }
           .navigationBarTitle("Photo Preview")
       }
}

struct PhotoPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPreviewView()
    }
}
