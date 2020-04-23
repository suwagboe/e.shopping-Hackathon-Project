//
//  Product.swift
//  e.shopping-Hackathon
//
//  Created by Bienbenido Angeles on 4/23/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import Foundation
import Firebase

struct Product: Codable & Equatable{
    let name: String
    let upc: String
    let prodId:String
    let company: String
}

extension Product{
    init(_ dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? "no product name"
        self.upc = dictionary["upc"] as? String ?? "no upc"
        self.prodId = dictionary["prodId"] as? String ?? "no prod id available"
        self.company = dictionary["companyName"] as? String ?? "no company available"
    }
}
