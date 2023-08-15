//
//  NewListingView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 18/07/2023.
//

import SwiftUI

struct NewListingView: View {
    @State private var buldingType = ""
    @State private var price = ""
    @State private var bedrooms = ""
    @State private var address  = ""
    @State private var imageurl = ""
    @State private var description = ""
//    var postedDaysAgo: String
    @EnvironmentObject var dataController: DataController
    
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack {
            HeaderView(header: "New Listings")
            VStack {
//                FormTextFieldView(iconName: "", placeholder: "Property Type", propertyType: $propertyType)
//                    .padding(.bottom, 10)
                FormTextFieldView(iconName: "", placeholder: "Building", attribute: $buldingType)
                    .padding(.bottom, 10)
                FormTextFieldView(iconName: "", placeholder: "Price (CAD)", attribute: $price)
                    .padding(.bottom, 10)
                FormTextFieldView(iconName: "", placeholder: "Rooms", attribute: $bedrooms)
                    .padding(.bottom, 10)
                FormTextFieldView(iconName: "", placeholder: "Address", attribute: $address)
                    .padding(.bottom, 10)
                FormTextFieldView(iconName: "", placeholder: "Description", attribute: $description)
                
                Spacer()
                Button(action: {
                    
                }){
                    Capsule()
                        .fill(Color( red: 227/255, green: 111/255, blue: 91/255, opacity: 1.0))
                        .frame(width: 180, height: 50)
//                        .shadow(color: .gray, radius: 0.5, x: 0, y: 1)
                        .overlay(
                            Text("Upload Photo")
                                .font(.title3)
                                .foregroundColor(.white)
                        )
                }
                
                Button(action: {
                    dataController.addListing(address: address, bedrooms: bedrooms, buldingType: buldingType, description: description, imageurl: imageurl, price: price)
                    
//                    dataController.fetchListings()
                    
                    showAlert = true
                }){
                    Capsule()
                        .fill(Color( red: 227/255, green: 111/255, blue: 91/255, opacity: 1.0))
                        .frame(width: 180, height: 50)
//                        .shadow(color: .gray, radius: 0.5, x: 0, y: 1)
                        .overlay(
                            Text("Create Listing")
                                .font(.title3)
                                .foregroundColor(.white)
                        )
                }
                
                Spacer()
                
                
            }///VStack
            .padding(.horizontal, 30)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Listing Added"),
                    message: Text("The listing has been successfully Added."),
                    dismissButton: .default(Text("OK")) {
                        dataController.fetchListings() // Re-fetch data
                    }
                )
            }
            
        }///NavStack
        
    }
}

struct NewListingView_Previews: PreviewProvider {
    static var previews: some View {
        NewListingView()
            .environmentObject(DataController())
    }
}
