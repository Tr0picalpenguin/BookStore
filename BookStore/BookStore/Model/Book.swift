//
//  Book.swift
//  BookStore
//
//  Created by Scott Cox on 5/12/22.
//

import Foundation

class Book {
    var author: String
    var title: String
    var lastUpdated: Date
    var rating: Double
    var synopsis: String
    
    init(author:String, title: String, lastUpdated: Date = Date(), rating: Double, synopsis: String) {
        self.author = author
        self.title = title
        self.lastUpdated = lastUpdated
        self.rating = rating
        self.synopsis = synopsis
    }
} // End of Class.
    
    extension Book: Equatable {
        static func == (lhs: Book, rhs: Book) -> Bool {
            return lhs.author == rhs.author &&
            lhs.title == rhs.title &&
            lhs.lastUpdated == rhs.lastUpdated &&
            lhs.rating == rhs.rating &&
            lhs.synopsis == rhs.synopsis &&
            lhs.lastUpdated == rhs.lastUpdated
        }
    }
