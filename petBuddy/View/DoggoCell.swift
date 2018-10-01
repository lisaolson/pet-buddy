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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configureCell(profileImage: UIImage, name: String, age: String, distance: String, description: String) {
        self.profileImage.image = profileImage
        self.nameLabel.text = name
        self.ageLabel.text = age
        self.distanceLabel.text = distance
        self.descriptionLabel.text = description
    }

}
