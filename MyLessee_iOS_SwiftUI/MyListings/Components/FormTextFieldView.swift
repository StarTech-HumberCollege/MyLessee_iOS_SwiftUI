//
//  FormTextFieldView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 18/07/2023.
//

import SwiftUI

struct FormTextFieldView: View {
    let iconName: String
    let placeholder: String
    @Binding var attribute: String
    
    var body: some View {        
        HStack {
            Image(iconName)
                .padding(.trailing)
                .offset(x: 5)
            TextField(placeholder, text: $attribute)
                .font(.title3)
                .autocapitalization(.none)
               
        }
        .padding(13)
        .overlay(
            Capsule()
                .stroke(Color(red: 126/255, green: 147/255, blue: 249/255), lineWidth: 1)
//                .shadow(color: .gray, radius: 1, x: 0, y: 1)
        )
    }
}

struct FormTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        // TODO: Need to fix the preview
        @State var property_Type = "Residential"
        FormTextFieldView(iconName: "profile_icon", placeholder: "Property Type", attribute: $property_Type)
    }
}
