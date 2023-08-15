//
//  LoginView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    @State private var showMainTab: Bool = false
    @AppStorage("uid") var userID: String = ""
    
    var body: some View {
        NavigationStack {
            Image("logoNoBg1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 15)
            
            Text("Login to your account")
                .foregroundColor(.gray)
                .font(.subheadline)
                .padding(.bottom, 15)
            
            //MARK: - FIELDS
            VStack(spacing: 15) {
                FormTextFieldView(iconName: "mail_icon", placeholder: "Enter email", attribute: $email)
                
                FormTextFieldView(iconName: "lock_icon", placeholder: "Enter password", attribute: $password)
                
            }.padding(.horizontal,30)
            

            HStack {
                Spacer()
                Text("Forgot your password?")
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .padding(.trailing, 28)
            }
            .padding(.top, 15)
            
            
            //MARK: - LOGIN BUTTON
            Button(action: {
//                changeActiveView
                Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                    //If error exist
                    if let error = error {
                        print(error)
                        return
                    }
                    //If authResult exist
                    if let authResult = authResult {
                        print("User UID: ")
                        print(authResult.user.uid)
                            
                        //Set UserID into User Defaults
                        userID = authResult.user.uid
                        showMainTab = true
                    }
                }
            }) {
                Image("buttonLogin")
                    .resizable()
                    .scaledToFit()
            }
            .frame(height: 47)
            .padding(.vertical, 15)
            
            //MARK: - SIGNUP WITH OTHER PROVIDERS
            Divider()

            VStack(spacing: 15) {
                Text("Or")
                    .foregroundColor(.gray)
                    .font(.subheadline)
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
                
                NavigationLink(destination: SignUpView()){
                    Text("Don’t have an account yet?")
                        .font(.subheadline)
                        .foregroundColor(Color(red: 0.49, green: 0.58, blue: 0.98))
                        .underline()
                        .padding(.vertical, 10)
                }
            }
                        
            Spacer()
        }//NavigationStack
        .padding()
        .fullScreenCover(isPresented: $showMainTab, content: {
                    MainTabView() // This is the content to show in full-screen
                })
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
//        LoginView(changeActiveView: {})
        LoginView()
    }
}
