//
//  HeaderView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Tuyi Chen on 2023-07-18.
//

import SwiftUI

struct HeaderView: View {
    
    let header: String
    
    var body: some View {
        VStack {
            HStack {
                Image("alvaro")
                    .resizable().frame(width: 50, height: 50)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
                Spacer()
                Image("logo")
                    .resizable().frame(width: 180, height: 40)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
            }
            Text(header).bold().font(.title)
                .foregroundColor(Color(red: 0xE3 / 255, green: 0x6F / 255, blue: 0x5B / 255))
            Divider()
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: "Header")
    }
}
