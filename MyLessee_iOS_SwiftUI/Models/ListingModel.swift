//
//  ListingModel.swift
//  MyLessee_iOS_SwiftUI
//
//  Created by Liza Zhyr on 14/08/2023.
//

import Foundation

struct ListingModel: Codable, Identifiable {
    var id: String
    var address: String
//    var area: Int
    var bedrooms: String
    var buldingType: String
    var description: String
    var imageurl: String
//    var parkingNo: Int
    var price: String
//    var washroomNo: Int
}
