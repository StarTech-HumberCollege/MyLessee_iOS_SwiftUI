//
//  CalendarView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Tuyi Chen on 2023-07-18.
//

import SwiftUI

struct CalendarView: View {
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            HeaderView(header: "Calendar")
            
            VStack() {
                /// Calendar of current month
                DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
                    .padding(.horizontal)
                    .datePickerStyle(.graphical)
            }
            .padding(.vertical, 10)
            
            HStack {
                Text("Upcoming Events").bold().font(.title3)
                    .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
                Spacer()
            }
            
            ScrollView {
                VStack {
                    UpcomingEventView(title: "Interview Preparation", startDateTime: "2023-08-01 14:00:00", endDateTime: "2023-01-01 17:00:00", description: "Learn IOS", location: "Online");
                    UpcomingEventView(title: "IOS Presentation", startDateTime: "2023-08-15 8:00:00", endDateTime: "2023-08-14 11:00:00", description: "Learn IOS", location: "Online");
                }
            }.frame(height: 200)
            
            HStack {
                Spacer()
                Button(action: {
                    /// TODO: Add event to calendar
                    AddEventView()
                }) {
                    Image("addButton")
                        .resizable()
                        .frame(width: 60, height: 60, alignment: .center)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
            }
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
