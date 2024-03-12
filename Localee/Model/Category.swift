//
//  Category.swift
//  Localee
//
//  Created by Csiszér Dominik on 11/03/2024.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: String
    let name: String
    
    var imageUrl: String?
}

let categories: [Category] = [
    Category(id: "101", name: "Hair & Styling"),
    Category(id: "102", name: "Köröm"),
    Category(id: "103", name: "Eyebrows & eyelashes"),
    Category(id: "104", name: "Masszázs"),
    Category(id: "105", name: "Baerbering"),
    Category(id: "106", name: "Hair removal"),
    Category(id: "107", name: "Facials & skincare"),
    Category(id: "108", name: "Injetables & filers"),
    Category(id: "109", name: "Test"),
    Category(id: "110", name: "Tattoo & piercing"),
    Category(id: "111", name: "Makup"),
    Category(id: "112", name: "Medical & dental"),
    Category(id: "113", name: "Counselling & holistic"),
    Category(id: "114", name: "Fitness")
]
