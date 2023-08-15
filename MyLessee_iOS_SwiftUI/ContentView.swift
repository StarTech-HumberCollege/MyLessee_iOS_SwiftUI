//
//  ContentView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("uid") var userID: String = ""
    
    
    var body: some View {
        //If in User Defaults saved any uid -> Display MainTabView, if empty display SignupView
        if userID.isEmpty {
            LoginView()
        }
        else{
            MainTabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           
    }
}
