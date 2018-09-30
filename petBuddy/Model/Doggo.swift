//
//  Doggo.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/28/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import Foundation
import Firebase

struct Doggo {
    
    let ref: DatabaseReference?
    let key: String
    let name: String
    let addedByUser: String
    
    init(name: String, addedByUser: String, key: String = "") {
        self.ref = nil
        self.key = key
        self.name = name
        self.addedByUser = addedByUser
    }
    
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? [String: AnyObject],
            let name = value["name"] as? String,
            let addedByUser = value["addedByUser"] as? String else {
                return nil
        }
        
        self.ref = snapshot.ref
        self.key = snapshot.key
        self.name = name
        self.addedByUser = addedByUser
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
            "addedByUser": addedByUser
        ]
    }
}
