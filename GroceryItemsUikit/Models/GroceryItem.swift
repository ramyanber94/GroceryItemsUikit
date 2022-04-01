//
//  GroceryItem.swift
//  FirebaseGroceryList
//
//  Created by Apptist Inc. on 2022-03-18.
//

import Foundation
import Firebase

struct GroceryItem {
    //MARK: - This will be the item saved on Firebase
    
    //MARK: - Properties for Grocery Items
    let ref: DatabaseReference?
    let key: String
    let name: String
    let addedByUser: String
    var completed: Bool
    
    init(name: String, addedByUser: String, completed: Bool, key: String = "") {
        //MARK: - Regular offline init
        self.ref = nil
        self.key = key
        self.name = name
        self.addedByUser = addedByUser
        self.completed = completed
    }
    
    init?(snapshot: DataSnapshot) {
        //MARK: - Database is taking a snapshot of the grocery item once it has been initialized
        guard
            let value = snapshot.value as? [String: AnyObject],
            let name = value["name"] as? String,
            let addedByUser = value["addedByUser"] as? String,
            let completed = value["completed"] as? Bool else {
            return nil
        }
        
        self.ref = snapshot.ref
        self.key = snapshot.key
        self.name = name
        self.addedByUser = addedByUser
        self.completed = completed
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
            "addedByUser": addedByUser,
            "completed" : completed
        ]
    }
}
