//
//  MeViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/30/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit
import Firebase

class MeViewController: UIViewController {

    @IBOutlet weak var emailLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.emailLbl.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            let authVC = storyboard?.instantiateViewController(withIdentifier: "AuthViewController") as? AuthViewController
            self.present(authVC!, animated: true, completion: nil)
            print("!! SUCCESSFULLY LOGGED OUT !!")
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }

}
