//
//  SignUpView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Zhangzhi Wang on 2023-07-18.
//

import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorMessage = ""
    
//    let changeActiveView: () -> Void
    
    var body: some View {
        NavigationStack {
            Image("logoNoBg1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, 15)
            
            Text("Create Account")
                .foregroundColor(.gray)
                .font(.subheadline)
                .padding(.bottom, 15)
            
            //MARK: - FIELDS
            VStack(spacing: 15) {
//                FormTextFieldView(iconName: "profile_icon", placeholder: "Enter username", propertyType: $fullName)
                
                FormTextFieldView(iconName: "mail_icon", placeholder: "Enter email", propertyType: $email)
                
                FormTextFieldView(iconName: "lock_icon", placeholder: "Enter password", propertyType: $password)
                
                FormTextFieldView(iconName: "lock_icon", placeholder: "Confirm password", propertyType: $confirmPassword)
                
            }.padding(.horizontal,30)
            
            Text(errorMessage).foregroundColor(.red)
            
            //MARK: - SIGNUP BUTTON
            
            Button(action: {
//                changeActiveView
                
                if password != confirmPassword {
                    //TODO: send some error
                    errorMessage = "Password doesn't match"
                }
                else {
                    errorMessage = ""
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        //If error exist
                        if let error = error {
                            print(error)
                            return
                        }
                        //If authResult exist
                        if let authResult = authResult {
                            print("User UID: ")
                            print(authResult.user.uid)
                        }
                    }
                }
                
                
                
            }) {
                Image("buttonCreate")
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
                
                NavigationLink(destination: LoginView()){
                    Text("Already have an account?")
                        .font(.subheadline)
                        .foregroundColor(Color(red: 0.49, green: 0.58, blue: 0.98))
                        .underline()
                        .padding(.vertical, 10)
                }
       
            }
            
            Spacer()
        }//NavigationStack
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
//        SignUpView(changeActiveView: {})
        SignUpView()
    }
}


//Test account:
//username: antonuser`@`test.com , pswd: anton4
