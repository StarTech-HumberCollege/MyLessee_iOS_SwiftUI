//
//  NotificationComponent.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Alvaro Beltran on 2023-07-18.
//

import SwiftUI

struct NotificationComponent: View {
    var user_image : String
    var notification1 : String
    var notification2 : String
    var body: some View {
        HStack{
            Image("\(user_image)").resizable().frame(width: 55, height: 55)
            VStack {
                Text(notification1).frame(width: UIScreen.main.bounds.width-90, height: 15, alignment: .leading)
                Text(notification2).frame(width: UIScreen.main.bounds.width-90, height: 15, alignment: .leading).foregroundColor(Color(red: 0xE3 / 255, green: 0x6F / 255, blue: 0x5B / 255))
            }
        
        }.frame(width: UIScreen.main.bounds.width,height: 70, alignment: .leading)
        
    }
}

struct NotificationComponent_Previews: PreviewProvider {
    static var previews: some View {
        NotificationComponent(user_image: "anton" ,notification1: "gonzalo", notification2: "Hi Alvaro! I was referred to you by Anton, told me you’re looking to rent your ...")
    }
}
