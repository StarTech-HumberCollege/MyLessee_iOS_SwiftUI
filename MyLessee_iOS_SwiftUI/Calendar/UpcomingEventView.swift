//
//  UpcomingEventView.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Tuyi Chen on 2023-07-18.
//

import SwiftUI

struct UpcomingEventView: View {
    
    let title: String
    let startDateTime: String // Format: "yyyy-MM-dd HH:mm:ss"
    let endDateTime: String // Format: "yyyy-MM-dd HH:mm:ss"
    let description: String
    let location: String
    
    var body: some View {
        HStack {
            Image("line1 1").resizable().frame(width: 8, height: 100)
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 0))
            
            VStack(alignment: .center) {
                Text(extractPartFromDateTime(datetime: startDateTime, part: "day"))
                    .bold().font(.system(size: 40))
                Text(extractPartFromDateTime(datetime: startDateTime, part: "month"))
                    .bold().font(.system(size: 30))
            }
            .foregroundColor(Color(red: 0xE3 / 255, green: 0x6F / 255, blue: 0x5B / 255))
            .frame(width: 80)
            
            VStack(alignment: .leading) {
                Text(title).bold()
                    .foregroundColor(Color(red: 0xE3 / 255, green: 0x6F / 255, blue: 0x5B / 255))
                Spacer().frame(height: 20)
                Text(getDuration()).foregroundColor(Color.gray)
                Text(location).foregroundColor(Color.gray)
            }
            
            Spacer()
            Button(action: {
                /// TODO: Pass event object to EventView
                EventView()
            }) {
                Image("akarIconsChevronRight")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
        }.frame(height: 100)
    }
    
    /// The function returns the certain part of datetime
    func extractPartFromDateTime(datetime: String, part: String) -> String {
        /// Convert the string in certain format to a Date object
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        if let date = dateFormatter.date(from: datetime) {
            let calendar = Calendar.current
            let components = calendar.dateComponents([.month, .day, .hour, .minute], from: date)
            switch part {
                case "month":
//                    return "\(components.month ?? -1)"
                    return "AUG"
                case "day":
                    return "\(components.day ?? -1)"
                case "hour":
                    return "\(components.hour ?? -1)"
                case "minute":
                    return "\(components.minute ?? -1)"
                default:
                    return "Invalid datetime part"
            }
        } else {
            return "Invalid date format."
        }
    }
    
    /// The function gets the duration of the event
    func getDuration() -> String {
        return "2:00PM - 5:00PM"
//        return extractPartFromDateTime(datetime: startDateTime, part: "hour") + ":" +
//        extractPartFromDateTime(datetime: startDateTime, part: "minute") + " - " +
//        extractPartFromDateTime(datetime: endDateTime, part: "hour") + ":" +
//        extractPartFromDateTime(datetime: endDateTime, part: "minute")
    }
}

struct UpcomingEventView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEventView(title: "Interview Preparation", startDateTime: "2023-08-01 14:00:00", endDateTime: "2023-01-01 17:00:00", description: "Learn IOS", location: "Online")
    }
}
