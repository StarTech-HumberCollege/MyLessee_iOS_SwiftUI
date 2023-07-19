//
//  MessageComponent.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Alvaro Beltran on 2023-07-18.
//

import SwiftUI

struct MessageComponent: View {
    var name : String
    var message : String
    var body: some View {
        HStack{
            Image("\(name)").resizable().frame(width: 55, height: 55)
            VStack {
                Text(name).frame(width: UIScreen.main.bounds.width-90, height: 1, alignment: .leading).fontWeight(.bold)
                Text(message).frame(width: UIScreen.main.bounds.width-90, height: 50, alignment: .leading)
            }
        
        }.frame(width: UIScreen.main.bounds.width,height: 70, alignment: .leading)
        
    }
}

struct MessageComponent_Previews: PreviewProvider {
    static var previews: some View {
        MessageComponent(name: "gonzalo", message: "Hi Alvaro! I was referred to you by Anton, told me you’re looking to rent your ...")
    }
}
