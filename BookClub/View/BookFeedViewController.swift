//
//  ViewController.swift
//  BookClub
//
//  Created by Alexandre Azevedo on 12/12/20.
//

import UIKit

class BookFeedViewController: UIViewController, StoryBoarded {

    var books: BookList?
//    let bag = DisposeBag()
    
    @IBOutlet weak var collectionView: UICollectionView?
    private let reuseIdentifier = "BookFeedCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadData()
    }
    
    
    // MARK: Load Data
    private func loadData() {
        
        BookDataSource().getItems() { books, error in
            if let books = books {
                self.books = books
                DispatchQueue.main.async {
                    self.navigationController?.title = books.title
                    self.collectionView?.reloadData()
                }
            }
        }
        
//        BookDataSource().getItems().subscribe(onSuccess: { books in
//            self.books = books
//            self.collectionView?.reloadData()
//        }, onFailure: { error in
//            print(error)
//        }).disposed(by: bag)
    }
    
    
    // MARK: Collection View
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books?.books.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FeedCollectionViewCell
        
        cell.setup(book: books?.books[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        openItem(id: indexPath.item)
    }

}

