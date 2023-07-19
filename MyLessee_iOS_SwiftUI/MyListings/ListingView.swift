//
//  ListingView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 18/07/2023.
//

import SwiftUI

struct ListingView: View {
    var price: String
    var numBeds: String
    var address: String
    var imageName: String
    var postDescription: String
    var postedDaysAgo: String
    
    
    var body: some View {
        //VStack - main
        VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        Image(imageName)
                            .resizable()
                            .frame(width: 140, height: 200)
                            .background(.gray)
                            .padding()
                        
                        VStack(alignment: .leading) {
                            Text("$ \(price)")
                                .font(.title2)
                                .padding(.bottom, 2)
                            Text("Bedrooms: x\(numBeds)")
                                .padding(.bottom, 2)
                            Text(address)
                                .padding(.bottom, 2)
                            Text(postDescription)
                        }
                        .frame(height: 220)
                    }///HStack
                    
//                    Divider()
                    
                    HStack{
                        Text(postedDaysAgo)
                            .padding()
                        
                        Spacer()
                        
                        Button(action: {}){
                            //Button Apearance
                            HStack{
                                Text("More")
                                Image(systemName: "arrowtriangle.right")
                            }
                            .foregroundColor(Color( red: 227/255, green: 111/255, blue: 91/255, opacity: 1.0))
                            .padding()
                        }
                    }
        }///VStack - main
    }
}

struct ListingView_Previews: PreviewProvider {
    static var previews: some View {
        ListingView(price: "200K", numBeds: "2", address: "King Street", imageName: "", postDescription: "Description: Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation", postedDaysAgo: "2 Hours Ago")
    }
}
