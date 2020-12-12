//
//  BookList.swift
//  ThingCollector
//
//  Created by Alexandre Azevedo on 02/12/20.
//

import Foundation

class BookList: Codable {
    
    var title: String = ""
    var books: [Book] = []
    
    
    
    enum CodingKeys: String, CodingKey {
        case title = "list_name"
        case books
    }
}
