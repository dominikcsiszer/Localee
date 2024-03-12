//
//  Service.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import Foundation

struct Service: Codable, Identifiable {
    let id: String
    let name: String
    let location: String
    let category: Category
    
    var imageUrl: String?
    var description: String?
}

let services: [Service] = [
    Service(id: "200", name: "Decadence Hair", location: "36 Store St. London", category: categories[0], imageUrl: "https://uploads-ssl.webflow.com/61f6bdf6622ca14c87d8dac1/6464022cd9a97ebd3de17cf3_SalonMainImage.jpg"),
    Service(id: "201", name: "Decadence Hair", location: "37 Store St. London", category: categories[0], imageUrl: "https://uploads-ssl.webflow.com/61f6bdf6622ca14c87d8dac1/646402b19ff4fa6d2b44e1b7_SalonSinks.jpg"),
    Service(id: "202", name: "Decadence Hair", location: "38 Store St. London", category: categories[1]),
    Service(id: "203", name: "Decadence Hair", location: "39 Store St. London", category: categories[2]),
]
