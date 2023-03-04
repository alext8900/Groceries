//
//  GroceryViewModel.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import Foundation
class GroceryViewModel: ObservableObject {
    @Published var groceryItems = [GroceryItem]()
    
    init() {
        if let url = Bundle.main.url(forResource: "groceryItems", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(JsonData.self, from: data)
                groceryItems = jsonData.groceryItems
            } catch {
                print("Error decoding JSON: \(error)")
            }
        } else {
            print("Unable to find json file")
        }
    }
}

struct GroceryItem: Identifiable, Codable {
    let id: String
    let name: String
    let image: String
    let groceryCategory: String
}

struct JsonData: Decodable {
    let groceryItems: [GroceryItem]

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        groceryItems = try container.decode([GroceryItem].self, forKey: .groceryItems)
    }

    enum CodingKeys: String, CodingKey {
        case groceryItems
    }
}


