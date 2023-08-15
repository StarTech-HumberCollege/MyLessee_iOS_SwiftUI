//
//  Photo.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 15/08/2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

//TODO: IMPLEMENT UPLOADING IMAGE TO FIRE STORAGE
struct Photo: Identifiable, Codable {
    @DocumentID var id: String?
    var imageURLString = ""
    var description = ""
    var reviewer = Auth.auth().currentUser?.email ?? ""
    var postedOn = Date()
    
    
    var dictionary: [String: Any] {
        return ["imageURLString": imageURLString, "description": description, "reviewer": reviewer, "postedOn": Timestamp(date: Date())]
    }
}
