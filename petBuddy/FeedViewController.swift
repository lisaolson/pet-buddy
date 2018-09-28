//
//  FeedViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/27/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit
import Firebase

class FeedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutPressed(_ sender: Any) {
        
        // Sign out
        do {
            try Auth.auth().signOut()
        }
        catch {
            print("error, there was a problem signing out")
        }
        
        // Show Root View Controller
        guard (navigationController?.popToRootViewController(animated: true)) != nil
            else {
                print("No View Controllers")
                return
            }
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
