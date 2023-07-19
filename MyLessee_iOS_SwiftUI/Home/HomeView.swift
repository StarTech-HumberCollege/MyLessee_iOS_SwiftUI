//
//  HomeView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView(header: "Home")
            
            ScrollView {
                PostView(icon: "tuyi", name: "Tuyi Chen", content: "Hi everyone! I'm Tuyi and just recently moved to Toronto. \nI'm in search of a 2 bed apartment to share with my sister in the midtown area, we are looking to pay around $2,500 plus utilities.", images:[], liked: true, comments:[])
                Spacer().frame(height: 20)
                PostView(icon: "anton", name: "Anton Vinokurov", content: "3 Bedroom apartment in the heart of Toronto downtown.", images:["image1"], liked: false, comments:["I want it"])
                Spacer().frame(height: 20)
                PostView(icon: "sponsor", name: "Bill Robertson (Sponsored)", content: "For all your real estate needs, Bill Robertson Real Estate agency is the best choice.\nWe have 4 offices in the GTA. Welcome to visit us", images:[], liked: false, comments:[])
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
