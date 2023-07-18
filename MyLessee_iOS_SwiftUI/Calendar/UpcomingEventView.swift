//
//  UpcomingEvent.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Tuyi Chen on 2023-07-18.
//

import SwiftUI

struct UpcomingEvent: View {
    
    let title: String
    let startDateTime: String // Format: "yyyy-MM-dd HH:mm:ss"
    let endDateTime: String // Format: "yyyy-MM-dd HH:mm:ss"
    let description: String
    let location: String
    
    var body: some View {
        HStack {
            Image("line1 1").resizable().frame(width: 8, height: 80)
            
            VStack {
                Text(extractPartFromDateTime(datetime: startDateTime, part: "day"))
                    .bold().font(.system(size: 40))
                Text(extractPartFromDateTime(datetime: startDateTime, part: "month"))
                    .bold().font(.system(size: 30))
            }
            .foregroundColor(Color(red: 0xE3 / 255, green: 0x6F / 255, blue: 0x5B / 255))
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 30))
            
            VStack {
                Text(title).font(.title3)
                    .foregroundColor(Color(red: 0xE3 / 255, green: 0x6F / 255, blue: 0x5B / 255))
                Spacer()
                Text("duration").font(.title3)
                    .foregroundColor(Color.gray)
                Text(location).font(.title3)
                    .foregroundColor(Color.gray)
            }
            
            Button(action: {
                EventView()
            }) {
                HStack {
                    /// Creates an image using the system icon named "checkmark", allowing it to adapt to its parent view's constraints, setting the image size with width 16 points and height 16 points, center the image
                    Image(systemName: "checkmark")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    
                    /// Displays the text "OK" in bold with predefined font style .body
                    Text("OK")
                        .font(.body)
                        .bold()
                }
            }
        }
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
                    return "\(components.month ?? -1)"
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
        return extractPartFromDateTime(datetime: startDateTime, part: "hour") + ":" +
        extractPartFromDateTime(datetime: startDateTime, part: "minute") + " - " +
        extractPartFromDateTime(datetime: endDateTime, part: "hour") + ":" +
        extractPartFromDateTime(datetime: endDateTime, part: "minute")
    }
}

struct UpcomingEventView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingEventView(title: "Interview Preparation", startDateTime: "2023-08-01 14:00:00", endDateTime: "2023-01-01 17:00:00", description: "Learn IOS", location: "Online")
    }
}
