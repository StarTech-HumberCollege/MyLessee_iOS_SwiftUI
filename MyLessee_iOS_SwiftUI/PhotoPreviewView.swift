//
//  PhotoPreviewView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 15/08/2023.
//

import SwiftUI
import FirebaseFirestore
import FirebaseAuth
import FirebaseStorage


//MARK: - VIEW TO SHOW PREVIEW OF PHOTO CHOOSEN FROM ALBUM
struct PhotoPreviewView: View {
    
    @State private var showAlert = false
//    @Binding var imageUrl: String
    
    var selectedImage: UIImage?
       
       var body: some View {
           VStack {
               if let image = selectedImage {
                   Image(uiImage: image)
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                   
                   Button(action:{
                       uploadPhoto()
                       showAlert = true
                   }){
                       Capsule()
                           .fill(Color( red: 227/255, green: 111/255, blue: 91/255, opacity: 1.0))
                           .frame(width: 180, height: 50)
                           .overlay(
                               Text("Upload Photo")
                                   .font(.title3)
                                   .foregroundColor(.white)
                           )
                   }
               } else {
                   Text("No Image Selected")
               }
           }
           .navigationBarTitle("Photo Preview")
           .alert(isPresented: $showAlert) {
               Alert(
                   title: Text("Uploaded to Storage"),
                   message: Text("The photo successfully Saved."),
                   dismissButton: .default(Text("OK")) {
                      
                   }
               )
           }
       }
    
    func uploadPhoto() {
        //Make sure Selected image not nil
        guard selectedImage != nil else {
            return
        }
        
        //Create Storage
        let storageRef = Storage.storage().reference()
        
        //Turn image into data
        let imageData = selectedImage!.jpegData(compressionQuality: 0.8)
        
        guard imageData != nil else {
            return
        }
        
        //Specify the file path and name. if images folder does not exist in Firebase Storage => automaticaly created
        let path = "images/\(UUID().uuidString).jpg"
        let fileRef = storageRef.child(path)
        
        //Upload Data
        let uploadTask = fileRef.putData(imageData!, metadata: nil){ metadata, error in
            if error == nil && metadata != nil {
                //Save reference of file to database or to variable
                //TODO: - IMPLEMENT LATER
//                imageUrl = path
//                print("URL OF IMAGE")
//                print(imageUrl)
            }
        }
        
        //Save in FireStore
    }
    
    
}

struct PhotoPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPreviewView()
    }
}
