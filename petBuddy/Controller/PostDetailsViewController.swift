//
//  PostDetailsViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 10/3/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit

class PostDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
}
