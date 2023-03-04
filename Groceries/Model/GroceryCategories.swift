//
//  GroceryCategories.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import Foundation

public struct GroceryCategory: Identifiable {
    public let id: String
    let name: String
    let image: String
}


public let groceryCategories = [
    GroceryCategory(id: "1", name: "Veggies", image: "strawberry"),
    GroceryCategory(id: "2", name: "Fruits", image: "pear"),
    GroceryCategory(id: "3", name: "Meat", image: "blueberry"),
    GroceryCategory(id: "4", name: "Fish", image: "watermellon"),
    GroceryCategory(id: "5", name: "Dairy & Eggs", image: "mango"),
    GroceryCategory(id: "6", name: "Bakery", image: "lime"),
    GroceryCategory(id: "7", name: "Frozen", image: "gooseberry"),
    GroceryCategory(id: "9", name: "Beverages", image: "cherry"),
    GroceryCategory(id: "10", name: "Snacks", image: "apple")
]
