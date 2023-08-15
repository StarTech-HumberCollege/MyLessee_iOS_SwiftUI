//
//  MyListingsView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 19/07/2023.
//

import SwiftUI
import FirebaseAuth

struct MyListingsView: View {
    //Dummy Data
    @State var appartments = [
                    ListingView(price: "207800", numBeds: "1", address: "Professor Damien Paul", imageName: "myListingHouse1-1", postDescription: "Luxurious and upgraded, this 4 bedroom, 4.5 bathroom home of 5,281 sq. ft. (including poolhouse, per independent third-party measurement) rests on a lot of 1.23 acres (per county) on a peaceful cul-de-sac in the Lakeside neighborhood. Richly-appointed spaces include large gathering areas, a bright, professional-grade kitchen, spectacular dining room, two walk-out master suites, and a home theater.", postedDaysAgo: "2 Weeks ago"),
                    ListingView(price: "1435000", numBeds: "6", address: "Jake House 15, Toronto, Ontario", imageName: "myListingHouse2-1", postDescription: "Boasting an array of sleek finishes and a thoughtful open plan layout, this immaculate 1-bedroom, 1-bathroom condo is a paradigm of contemporary Brooklyn living. Features of this 531 sq. ft. home include wide plank engineered hardwood floors, huge Pella windows with western exposure, central heating and cooling, and a convenient washer/dryer hook-up. Beyond a functional entryway space the home flows into a luminous, open- concept living, dining, and kitchen area. The galley-style kitchen is equipped with white quartz countertops, a white tile backsplash, Nolte cabinets, and a suite of high-end stainless steel appliances from Samsung and Fisher & Paykel. ", postedDaysAgo: "15 days ago"),
                    ListingView(price: "3200000", numBeds: "7", address: "Rosalean Avenue 17, Toronto, Ontario", imageName: "myListingHouse3-1", postDescription: "This 7 Bedroom W/ 2 Full Bathroom Ranch Home Is Immaculate & Full Of Upgrades! Enjoy The Open Floor Plan W/ Vaulted 15ft Ceilings & Large Windows Throughout. The Beautiful Kitchen Is The Heart Of The Home Complete With Large Customized Granite Island & Stainless Steel Appliances. Updated Lighting Throughout The Entire Home. Fully Updated Guest Bathroom And Laundry Room. This Floorplan Includes 2′ Extension On Every Side Increasing The Square Footage, Large Extended Patio For Entertaining Right Off The Dining Area. The Large Master Bedroom W/ Large Garden Tub, Double Sinks & Huge Walk-In Closet. Enjoy The Fully Fenced Backyard Perfect For Kids & Pets. The 2.5 Car Extended Garage Allows Room For Extra Storage Or Work Area.", postedDaysAgo: "4 hours ago")
                ]
    
    var body: some View {
        NavigationStack{
            HeaderView(header: "My Listings")
            List{
                ForEach(0..<appartments.count){ index in
                    appartments[index]
                        //Adding Swipe buttons:
                        .swipeActions(allowsFullSwipe: false){
                            Button(action: {}){
                                Image(systemName: "trash.fill")
                            }
                            .tint(.red)
                            
                            //Add More buttons for Swipe Actions
                        }
                }
            }///List
            //Set Style of the list without left-right margins
            .listStyle(PlainListStyle())
            //MARK: - CREATING UPPER TOOLBAR
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {

                    NavigationLink(destination: NewListingView()){
                        Image(systemName: "plus")
                            .foregroundColor(Color( red: 227/255, green: 111/255, blue: 91/255, opacity: 1.0))
                    }
                    
                    Button(action: {
                        let firebaseAuth = Auth.auth()
                        do {
                          try firebaseAuth.signOut()
                            print("SUCCESSFULLY SIGN OUT")
                        } catch let signOutError as NSError {
                          print("Error signing out: %@", signOutError)
                        }
                        
                    }){
                        Text("Sign Out")
                    }
                    .font(.title3)
                    .foregroundColor(Color( red: 227/255, green: 111/255, blue: 91/255, opacity: 1.0))
                }
            }
        }///NavStack
    }
}



struct MyListingsView_Previews: PreviewProvider {
    static var previews: some View {
        MyListingsView()
    }
}

