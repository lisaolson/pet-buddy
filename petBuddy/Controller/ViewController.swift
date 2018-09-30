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
    
    @IBAction func goToLoginPage(_ sender: Any) {
        performSegue(withIdentifier: "goToLogin", sender: self)
    }

    @IBAction func goToRegisterPage(_ sender: Any) {
        performSegue(withIdentifier: "goToRegister", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser != nil {
            performSegue(withIdentifier: "goToChat", sender: self)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

