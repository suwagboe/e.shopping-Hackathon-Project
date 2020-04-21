//
//  NewsArticle_Model.swift
//  e.shopping-Hackathon
//
//  Created by Gregory Keeley on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import Foundation

enum ImageFormat: String {
    case superJumbo = "superJumbo"
    case thumbLarge = "thumbLarge"
    case standardThumbnail = "Standard Thumbnail"
    case normal = "Normal"
}
struct TopStories: Codable & Equatable {
    let response: Docs
}
struct Docs: Codable & Equatable {
    let docs: [Article]
}
struct Article: Codable & Equatable {

    let abstract: String
    let multimedia: [Multimedia]?
    private enum CodingKeys: String, CodingKey {
        case abstract
        case multimedia
    }
}
struct Multimedia: Codable & Equatable {
    let url: String
    let height: Double
    let width: Double
}
