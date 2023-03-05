//
//  GroceryCategories.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import Foundation

public struct GroceryCategory: Identifiable, Equatable, Hashable {
    public let id: String
    let name: String
    let image: String
    
    public static func == (lhs: GroceryCategory, rhs: GroceryCategory) -> Bool {
        return lhs.name == rhs.name
    }
}


public let groceryCategories = [
    GroceryCategory(id: "1", name: "Veggies", image: "corn"),
    GroceryCategory(id: "2", name: "Produce", image: "pear"),
    GroceryCategory(id: "3", name: "Meat", image: "cherry"),
    GroceryCategory(id: "4", name: "Fish", image: "watermelon"),
    GroceryCategory(id: "5", name: "Dairy & Eggs", image: "mango"),
    GroceryCategory(id: "6", name: "Bakery", image: "lime"),
    GroceryCategory(id: "7", name: "Frozen", image: "gooseberry"),
    GroceryCategory(id: "9", name: "Beverages", image: "cherry"),
    GroceryCategory(id: "10", name: "Snacks", image: "fruitloops")
]
