//
//  User.swift
//  FirebaseGroceryList
//
//  Created by Apptist Inc. on 2022-03-18.
//

import Foundation
import Firebase

struct User {
    
    //MARK: - User Object properties
    let uid: String //id
    let email: String //email
    
    init(authData: Firebase.User) {
        //MARK: - Login with the Firebase User
        uid = authData.uid
        email = authData.email!
    }
    
    init(uid: String, email: String) {
        //MARK: - Login with id and email
        self.uid = uid
        self.email = email
    }
}
