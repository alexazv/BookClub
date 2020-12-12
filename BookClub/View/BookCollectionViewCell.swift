//
//  FeedCollectionViewCell.swift
//  ThingCollector
//
//  Created by Alexandre Azevedo on 26/11/20.
//

import UIKit
import AlamofireImage

class FeedCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView?
    @IBOutlet weak var label: UILabel?
    
    func setup(book: Book?) {
        label?.text = book?.title
        
        guard let url = URL(string: book?.imageUrl ?? "") else {
            image?.image = nil
            return
        }
        image?.af.setImage(withURL: url, completion:  { (data) in
            print(data)
        })
    }
    
    func test() {
        if let path = Bundle.main.path(forResource: "fileName", ofType: "plist") {

            //If your plist contain root as Array
            if let array = NSArray(contentsOfFile: path) as? [[String: Any]] {

            }

            ////If your plist contain root as Dictionary
            if let dic = NSDictionary(contentsOfFile: path) as? [String: Any] {

            }
        }
    }
}
