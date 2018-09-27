//
//  ViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/27/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class ViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    @IBAction func signInPressed(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error)
                in
                if error != nil {
                    // Create account
                } else {
                    KeychainWrapper.standard.set((user?.user.uid)!, forKey: "KEY_UID")
                }
            }
        }
    }
}

