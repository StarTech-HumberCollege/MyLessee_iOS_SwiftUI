//
//  ContentView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI

enum ActiveView {
    case signUp
    case login
    case mainTab
}

struct ContentView: View {
    @State private var activeView: ActiveView = .signUp

        var body: some View {
            Group {
                switch activeView {
                case .signUp:
                    SignUpView(changeActiveView: { self.activeView = .login })
                case .login:
                    LoginView(changeActiveView: { self.activeView = .mainTab })
                case .mainTab:
                    MainTabView()
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
