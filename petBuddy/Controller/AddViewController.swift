//
//  AddViewController.swift
//  petBuddy
//
//  Created by Lisa Olson on 10/2/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit
import AVFoundation

class AddViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let imagePicker = UIImagePickerController()
    
    func openCamera() {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            print("camera not supported by this device")
            return
        }
        
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        
        present(imagePicker, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var imageTake: UIImageView!
    
    @IBAction func shootPhoto(_ sender: Any) {
        
    }
    
    @IBAction func photoFromLibrary(_ sender: UIBarButtonItem) {
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}

