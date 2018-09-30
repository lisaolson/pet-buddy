//
//  User.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/28/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import Foundation
import Firebase

struct User {
    
    let uid: String
    let email: String
    
    init(authData: Firebase.User) {
        uid = authData.uid
        email = authData.email!
    }
    
    init(uid: String, email: String) {
        self.uid = uid
        self.email = email
    }
}
