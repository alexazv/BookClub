//
//  StoryBoarded.swift
//  BookClub
//
//  Created by Alexandre Azevedo on 12/12/20.
//

import Foundation
import UIKit

protocol StoryBoarded {
    static func instatiate() -> Self
}

extension StoryBoarded where Self: UIViewController {
    static func instatiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
