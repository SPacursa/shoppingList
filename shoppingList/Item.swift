//
//  Item.swift
//  shoppingList
//
//  Created by Sean Pacursa on 2/12/19.
//  Copyright © 2019 John Hersey Highschool. All rights reserved.
//

import Foundation
class Item {
    var name: String
    var quantity: Int
    init (name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
}
