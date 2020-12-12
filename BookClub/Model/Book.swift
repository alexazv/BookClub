//
//  Book.swift
//  ThingCollector
//
//  Created by Alexandre Azevedo on 02/12/20.
//

import Foundation

class Book: Codable {
    
    var title: String = ""
    var author: String = ""
    var description: String = ""
    var imageUrl: String = ""
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case author = "author"
        case description = "description"
        case imageUrl = "book_image"
    }
}
