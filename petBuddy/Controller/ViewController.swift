//
//  ViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/27/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logInWithGooglePressed(_ sender: Any) {
    }
    
    @IBAction func logInWithFBPressed(_ sender: Any) {
    }
    
    @IBAction func logInWithEmailPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "loginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
}

