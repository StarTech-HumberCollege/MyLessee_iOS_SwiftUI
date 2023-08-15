//
//  DataController.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 15/08/2023.
//

import Foundation
import Firebase
import FirebaseFirestore

class DataController: ObservableObject {
    @Published var listings: [ListingModel] = []
    
    func fetchListings(){
        //First make Sure listings is empty
        listings.removeAll()
        
        //Get reference to collection of listings
        let db = Firestore.firestore()
        let ref = db.collection("listings")
                
        ref.getDocuments{ snapshot, error in
            //Check for error
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            //if succeded to get documents ==> snapshot exists
            if let snapshot = snapshot {
                //Assign every data of each document to local data
                for document in snapshot.documents{
                    let data = document.data()
                    let docID = document.documentID
                    
                    //Breakdown data into attributes, with default value like empty string
                    let address = data["address"] as? String ?? ""
                    let bedrooms = data["bedrooms"] as? String ?? ""
                    let buldingType = data["buldingType"] as? String ?? ""
                    let description = data["description"] as? String ?? ""
                    let imageurl = data["imageurl"] as? String ?? ""
                    let price = data["price"] as? String ?? ""
                    
                    //Create new Object from fetched data
                    //Use document id as ListingModel id
                    let listing = ListingModel(id: docID, address: address, bedrooms: bedrooms, buldingType: buldingType, description: description, imageurl: imageurl, price: price)
                    //Append object to array
                    self.listings.append(listing)
                }
            }
            
        }
    }//func
    
    func addListing(address: String, bedrooms: String, buldingType: String, description: String, imageurl: String, price: String){
        //Get reference to collection of listings
        let db = Firestore.firestore()
        let ref = db.collection("listings").document()
        ref.setData(["address": address, "bedrooms": bedrooms, "buldingType": buldingType, "description": description, "imageurl": imageurl, "price": price]) { error in
            if let error = error{
                print(error.localizedDescription)
            }
        }
        
        
    }//func
    
    func deleteListing(byId: String){
        //Get reference to collection of listings
        let db = Firestore.firestore()
        
        db.collection("listings").document(byId).delete() { err in
            if let err = err {
                print("Error removing document: \(err)")
            } else {
                print("Document successfully removed!")
            }
        }
    }//func
}
