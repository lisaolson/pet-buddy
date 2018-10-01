//
//  Doggo.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/28/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import Foundation
import Firebase

class Doggo {
    private var _name: String
    private var _age: String
    private var _pic: UIImage
    private var _description: String
    private var _distance: String
    private var _senderId: String
    
    var name: String {
        return _name
    }
    var age: String {
        return _age
    }
    var pic: UIImage {
        return _pic
    }
    var description: String {
        return _description
    }
    var distance: String {
        return _distance
    }
    var senderId: String {
        return _senderId
    }
    
    init(name: String, age: String, pic: UIImage, description: String, distance: String, senderId: String) {
        self._name = name
        self._age = age
        self._pic = pic
        self._description = description
        self._distance = distance
        self._senderId = senderId
    }
}
