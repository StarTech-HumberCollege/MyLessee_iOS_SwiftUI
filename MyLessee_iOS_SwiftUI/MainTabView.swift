//
//  MainTabView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    VStack {
                        Image("iconHome")
                            .renderingMode(.template)
                        Text("Home")
                    }
                }
                .foregroundColor(selectedTab == 0 ? .blue : .gray)
                .tag(0)
            
            MyListingsView()
                .tabItem {
                    VStack {
                        Image("iconList")
                            .renderingMode(.template)
                        Text("My Listings")
                    }
                }
                .foregroundColor(selectedTab == 0 ? .blue : .gray)
                .tag(1)
            
            CalendarView()
                .tabItem {
                    VStack {
                        Image("iconCalendar")
                            .renderingMode(.template)
                        Text("Calendar")
                    }
                }
                .foregroundColor(selectedTab == 0 ? .blue : .gray)
                .tag(2)
            
            MessageView()
                .tabItem {
                    VStack {
                        Image("iconMessage")
                            .renderingMode(.template)
                        Text("Messages")
                    }
                }
                .foregroundColor(selectedTab == 0 ? .blue : .gray)
                .tag(3)
            
            NotificationsView()
                .tabItem {
                    VStack {
                        Image("iconNotifications")
                            .renderingMode(.template)
                        Text("Notifications")
                    }
                }
                .foregroundColor(selectedTab == 0 ? .blue : .gray)
                .tag(4)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
