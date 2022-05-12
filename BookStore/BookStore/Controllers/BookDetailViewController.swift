//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Scott Cox on 5/12/22.
//

import UIKit

class BookDetailViewController: UIViewController {
 
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var bookPhoto: UIImageView!
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
    }
    @IBAction func saveButtonTapped(_ sender: Any) {
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
