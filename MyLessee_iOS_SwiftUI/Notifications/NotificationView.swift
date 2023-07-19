//
//  NotificationView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Alvaro Beltran on 2023-07-18.
//

import SwiftUI

struct NotificationView: View {
    @State var users : [String] = ["alvaro", "anton", "tuyi","george"]
    @State var notification1 : [String] = ["Alvaro invited you to the", "Anton liked your ", "Tuyi commented on your","George just joined"]
    @State var notification2: [String] = ["MyLessee Connect", "Comment Published on March 21","SPost pulished on March 20","MyLessee Connect"]
    
    var body: some View {
        VStack(alignment: .trailing){
            
            VStack{
                HeaderView(header: "Notification")
                
            }
            ScrollView {
                         
                VStack{
                    ForEach( Array(notification1.enumerated()), id: \.element) { index, member in
                        NotificationComponent(user_image: users[index],notification1: notification1[index], notification2: notification2[index])
                    }
                }
                
            }
        }
        MainTabView()
    }

}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
