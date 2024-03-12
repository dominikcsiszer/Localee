//
//  Service.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import Foundation

struct Location: Codable {
    var latitude: Double
    var longitude: Double
}

struct Service: Identifiable {
    let id: String
    let name: String
    let location: Location
    let category: Category
    
    var imageUrl: String?
    var description: String?
}

let services: [Service] = [
    Service(id: "200", name: "Decadence Hair", location: Location(latitude: 47.46181, longitude: 18.95845), category: categories[0], imageUrl: "https://uploads-ssl.webflow.com/61f6bdf6622ca14c87d8dac1/6464022cd9a97ebd3de17cf3_SalonMainImage.jpg"),
    Service(id: "201", name: "Decadence Hair", location: Location(latitude: 47.42931, longitude: 18.91356), category: categories[0], imageUrl: "https://uploads-ssl.webflow.com/61f6bdf6622ca14c87d8dac1/646402b19ff4fa6d2b44e1b7_SalonSinks.jpg"),
    Service(id: "202", name: "Decadence Hair", location: Location(latitude: 47.4924430302, longitude: 19.0527914555), category: categories[1]),
    Service(id: "203", name: "Decadence Hair", location: Location(latitude: 47.4912880348, longitude: 19.0503997984), category: categories[2]),
]
