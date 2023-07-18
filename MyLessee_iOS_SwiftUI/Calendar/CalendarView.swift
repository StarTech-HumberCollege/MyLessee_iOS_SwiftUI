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
                    
                Divider()
                
                
            }
            .padding(.vertical, 100)
        }
    }
    
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
