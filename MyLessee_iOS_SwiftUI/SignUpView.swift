//
//  SignUpView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI

struct SignUpView: View {
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
            
            Text("Create Account")
                .foregroundColor(.gray)
                .font(.caption)
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
                    Image("mail")
                        .resizable()
                        .frame(width: 300, height: 50)
                    TextField("Enter email", text: $email)
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
                
                ZStack {
                    Image("password")
                        .resizable()
                        .frame(width: 300, height: 50)
                    TextField("Confirm password", text: $confirmPassword)
                        .foregroundColor(.black)
                        .padding(.leading, 75)
                }
            }
            
            
            
            
            Button(action: {}) {
                Image("buttonCreate")
                    .resizable()
                    .scaledToFit()
            }
            .frame(height: 47)
            .padding(.vertical, 15)
            
            Divider()
            
            Text("Or")
                .foregroundColor(.gray)
                .font(.caption)
                .padding(.vertical, 10)
            
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
            
            Text("Already have an account?")
                .font(.caption)
                .foregroundColor(Color(red: 0.49, green: 0.58, blue: 0.98))
                .underline()
                .padding(.vertical, 10)
            
            Spacer()
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
