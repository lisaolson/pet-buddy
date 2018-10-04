//
//  AuthViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/30/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit


class AuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func facebookLoginPressed(_ sender: Any) {
    }
    
    @IBAction func googleLoginPressed(_ sender: Any) {
    }
    
    @IBAction func emailLoginPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        present(loginVC!, animated: true, completion: nil)
    }
    
}
