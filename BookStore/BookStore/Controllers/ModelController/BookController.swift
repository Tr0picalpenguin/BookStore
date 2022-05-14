//
//  BookController.swift
//  BookStore
//
//  Created by Scott Cox on 5/12/22.
//

import Foundation

class BookController {
    
    //MARK: -  Singleton
    static let sharedInstance = BookController()
    
    //MARK: - Collection
    var books: [Book] = []
    
    //MARK: -  CRUD functions
    
    func createBook(author: String, title: String, rating: Double, synopsis: String) {
        let book = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        books.append(book)
    }
    
    func update(bookToUpdate: Book, author: String, title: String, rating: Double, synopsis: String) {
        bookToUpdate.author = author
        bookToUpdate.title = title
        bookToUpdate.rating = rating
        bookToUpdate.synopsis = synopsis
    }
    
    func delete(bookToDelete: Book) {
        guard let index = books.firstIndex(of: bookToDelete) else {return}
        books.remove(at: index)
    }
}// End of Class
