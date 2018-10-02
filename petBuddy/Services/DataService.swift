//
//  DataService.swift
//  petBuddy
//
//  Created by Lisa Olson on 9/29/18.
//  Copyright © 2018 Lisa Olson. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference {
        return _REF_GROUPS
    }
    
    var REF_FEED: DatabaseReference {
        return _REF_FEED
    }
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>) {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    // Create Doggo Post
    func uploadDoggo(withMessage message: String, forUID uid: String, withGroupKey groupKey: String?, sendComplete: @escaping (_ status: Bool) -> ()) {
        if groupKey != nil {
            // send to groups reference
        } else {
            REF_FEED.childByAutoId().updateChildValues(["content": message, "senderId": uid])
            sendComplete(true)
        }
    }
    
    // Get all Doggos and Display
    func getAllDoggos(handler: @escaping (_ doggo: [Doggo]) -> ()) {
        var doggoArray = [Doggo]()
        REF_FEED.observeSingleEvent(of: .value) { (feedDoggoSnapshot) in
        guard let feedDoggoSnapshot = feedDoggoSnapshot.children.allObjects as? [DataSnapshot] else { return }
            
            for doggo in feedDoggoSnapshot {
                let content = doggo.childSnapshot(forPath: "content").value as! String
                let senderId = doggo.childSnapshot(forPath: "senderId").value as! String
                let doggo = Doggo(content: content, senderId: senderId)
                doggoArray.append(doggo)
            }
            
            handler(doggoArray)
        }
    }
}
