//
//  FormTextFieldView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 18/07/2023.
//

import SwiftUI

struct FormTextFieldView: View {
    let placeholder: String
    @Binding var propertyType: String
    
    var body: some View {
        Capsule()
            .stroke(Color.blue, lineWidth: 1)
            .frame(width: 340, height: 50)
            .shadow(color: .gray, radius: 0.5, x: 0, y: 1)
            .overlay(
                TextField(placeholder, text: $propertyType)
                    .font(.title3)
                    .padding(.leading, 30)
            )
    }
}

struct FormTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        // TODO: Need to fix the preview
//        @State var property_Type = "Residential"
//        FormTextFieldView(placeholder: "Property Type", propertyType: $property_Type)
        Text("FormTextFieldView")
    }
}
