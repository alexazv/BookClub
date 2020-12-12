//
//  BookError.swift
//  ThingCollector
//
//  Created by Alexandre Azevedo on 02/12/20.
//

import Foundation

struct RuntimeError: Error {
    let message: String

    init(_ message: String) {
        self.message = message
    }

    public var localizedDescription: String {
        return message
    }
}
