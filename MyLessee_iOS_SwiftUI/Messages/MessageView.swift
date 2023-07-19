//
//  MessageView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Tuyi Chen on 2023-07-18.
//

import SwiftUI

struct MessageView: View {
    @State var users : [String] = ["tuyi", "anton", "gonzalo"]
    @State var messages: [String] = ["Hi Alvaro! I was referred to you by Anton, told me you’re looking to rent your ...", "Hey man, i have someone interested in your apartment, she will contact you.","Sure thing! i’m usually free during the weekends. Please book an appointment."]
    
    var body: some View {
        VStack(alignment: .trailing){
            
            VStack{
                HeaderView(header: "Messages")
                SearchComponent()
            }
            ScrollView {
                         
                VStack{
                    ForEach( Array(users.enumerated()), id: \.element) { index, member in
                        MessageComponent(name: users[index], message: messages[index])
                    }
                }
                
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
