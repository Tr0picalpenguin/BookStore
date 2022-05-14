//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Scott Cox on 5/12/22.
//

import UIKit

class BookDetailViewController: UIViewController {
 
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
    @IBOutlet weak var bookSynopsisTextField: UITextView!
    @IBOutlet weak var clearButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    var bookReceiver: Book?
   
    func updateViews(book: Book?) {
           guard let book = book else {return}
           bookTitleTextField.text = book.title
           bookAuthorTextField.text = book.author
           bookRatingTextField.text = String(book.rating)
           bookSynopsisTextField.text = book.synopsis
       }
    
 
    func resetView() {
        bookTitleTextField.text = ""
        bookAuthorTextField.text = ""
        bookRatingTextField.text = ""
        bookSynopsisTextField.text = ""
    }
        
    

    
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = bookTitleTextField.text,
                     let author = bookAuthorTextField.text,
                     let rating = bookRatingTextField.text,
                     let synopsis = bookSynopsisTextField.text else {return}
               let ratingUnwrapped = Double(rating) ?? 0.0
               if let book = bookReceiver {
                   //Update
                   BookController.sharedInstance.update(bookToUpdate: book, author: author, title: title, rating: ratingUnwrapped, synopsis: synopsis)
               } else {
                   // Create
                   BookController.sharedInstance.createBook(author: author, title: title, rating: ratingUnwrapped, synopsis: synopsis)
               }
               navigationController?.popViewController(animated: true)
           }
           

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
