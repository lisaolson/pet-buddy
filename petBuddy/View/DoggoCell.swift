//
//  DoggoCell.swift
//  petBuddy
//
//  Created by Lisa Olson on 10/1/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import UIKit

class DoggoCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
