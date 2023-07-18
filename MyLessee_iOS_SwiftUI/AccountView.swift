//
//  AccountView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI

struct AccountSection: Identifiable {
    let id = UUID()
    let iconName: String
    let text: String
}

struct AccountView: View {
    
    let items: [AccountSection] = [
        AccountSection(iconName: "ProfileOutline", text: "Profile"),
        AccountSection(iconName: "ListOutLine", text: "My Listings"),
        AccountSection(iconName: "BookmarkOutline", text: "Bookmarks"),
        AccountSection(iconName: "DiamondOutline", text: "Premium Points"),
        AccountSection(iconName: "SettingsOutline", text: "Settings")
    ]
    
    var body: some View {
        VStack {
            Text("Alvaro Beltran")
                .font(.title)
            Text("Posts : 124 | Listings : 0")
                .foregroundColor(Color.gray)
            List(items) { item in
                HStack {
                    Image(item.iconName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                    Text(item.text)
                }
                .padding(2)
                .listRowSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
