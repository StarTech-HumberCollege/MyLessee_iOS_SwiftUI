//
//  SearchComponent.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Alvaro Beltran on 2023-07-18.
//

import SwiftUI

struct SearchComponent: View {
    var body: some View {
        HStack{
            Image("rectangle1")
            Image("message_write_new")
        }.frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading)
    }
}

struct SearchComponent_Previews: PreviewProvider {
    static var previews: some View {
        SearchComponent()
    }
}
