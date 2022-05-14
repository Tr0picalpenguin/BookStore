//
//  BookTableViewCell.swift
//  BookStore
//
//  Created by Scott Cox on 5/12/22.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookRatingLabel: UILabel!
    
    func updateViews(for book: Book) {
        bookTitleLabel.text = book.title
        bookAuthorLabel.text = book.author
        bookRatingLabel.text = String(book.rating)
    }
} // End of Class
