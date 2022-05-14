//
//  BookListTableViewController.swift
//  BookStore
//
//  Created by Scott Cox on 5/12/22.
//

import UIKit

class BookListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return BookController.sharedInstance.books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? BookTableViewCell else {return UITableViewCell() }
        let bookEntry = BookController.sharedInstance.books[indexPath.row]
        cell.updateViews(for: bookEntry)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let bookToDelete = BookController.sharedInstance.books[indexPath.row]
            BookController.sharedInstance.delete(bookToDelete: bookToDelete)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            if let index = tableView.indexPathForSelectedRow {
                if let destination = segue.destination as? BookDetailViewController {
                    let bookToPass = BookController.sharedInstance.books[index.row]
                    destination.bookReceiver = bookToPass
                }
            }
        }
    }
    
    
} // End of Class
