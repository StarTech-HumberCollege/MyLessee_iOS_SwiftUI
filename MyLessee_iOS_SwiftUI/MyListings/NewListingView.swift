//
//  NewListingView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 18/07/2023.
//

import SwiftUI

struct NewListingView: View {
    @State var propertyType = ""
    
    
    var body: some View {
        NavigationStack {
            HeaderView(header: "New Listings")
            VStack {
                FormTextFieldView(placeholder: "Property Type", propertyType: $propertyType)
                    .padding(.bottom, 10)
                FormTextFieldView(placeholder: "Building", propertyType: $propertyType)
                    .padding(.bottom, 10)
                FormTextFieldView(placeholder: "Price (CAD)", propertyType: $propertyType)
                    .padding(.bottom, 10)
                FormTextFieldView(placeholder: "Rooms", propertyType: $propertyType)
                    .padding(.bottom, 10)
                FormTextFieldView(placeholder: "Address", propertyType: $propertyType)
                    .padding(.bottom, 10)
                FormTextFieldView(placeholder: "Description", propertyType: $propertyType)
                
                Spacer()
                Button(action: {}){
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
                
                Button(action: {}){
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
                
                
            }
            
        }///NavStack
        
    }
}

struct NewListingView_Previews: PreviewProvider {
    static var previews: some View {
        NewListingView()
    }
}
