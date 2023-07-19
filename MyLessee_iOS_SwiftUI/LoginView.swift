//
//  LoginView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI

struct LoginView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack(alignment: .center) {
            Image("logoNoBg1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 15)
            
            Text("Login to your account")
                .foregroundColor(.gray)
                .font(.subheadline)
                .padding(.bottom, 15)
            
            VStack(spacing: 15) {
                ZStack {
                    Image("fullName")
                        .resizable()
                        .frame(width: 300, height: 50)
                    TextField("Enter username", text: $fullName)
                        .foregroundColor(.black)
                        .padding(.leading, 75)
                }
                
                ZStack {
                    Image("password")
                        .resizable()
                        .frame(width: 300, height: 50)
                    TextField("Enter password", text: $password)
                        .foregroundColor(.black)
                        .padding(.leading, 75)
                }
            }
            
            
            HStack {
                Spacer()
                Text("Forgot your password?")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding(.trailing, 28)
            }
            .padding(.top, 15)
            
            Button(action: {}) {
                Image("buttonLogin")
                    .resizable()
                    .scaledToFit()
            }
            .frame(height: 47)
            .padding(.vertical, 15)
            
            Divider()
            
            Text("Or")
                .foregroundColor(.gray)
                .font(.subheadline)
                .padding(.vertical, 10)
            
            VStack {
                Button(action: {}) {
                    Image("signUpWithGoogle")
                        .resizable()
                        .scaledToFit()
                }
                .frame(height: 45)
                
                Button(action: {}) {
                    Image("signUpWithFacebook")
                        .resizable()
                        .scaledToFit()
                }
                .frame(height: 45)
            }
            
            Text("Don’t have an account yet?")
                .font(.subheadline)
                .foregroundColor(Color(red: 0.49, green: 0.58, blue: 0.98))
                .underline()
                .padding(.vertical, 10)
            
            Spacer()
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
