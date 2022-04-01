//
//  Posts.swift
//  GroceryItemsUikit
//
//  Created by Ramy Anber on 2022-04-01.
//

import Foundation


struct Collections: Identifiable {
    var id = UUID()
    var collect: [Post]?
}

struct Post: Identifiable {
    var id = UUID()
    var title: String?
    var body: String?
}
