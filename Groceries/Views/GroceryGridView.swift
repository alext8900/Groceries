//
//  GroceryView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI
import Foundation
import Combine


struct GroceryGridView: View {
    let groceryItems: [GroceryItem]
    public var selectedCategory = "Produce"

    @ObservedObject var viewModel = GroceryViewModel()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 30) {
                ForEach(viewModel.groceryItems.filter { $0.groceryCategory == selectedCategory }) { item in
                    GroceryItemView(groceryItem: GroceryItem(id: item.id, name: item.name, image: item.image, groceryCategory: item.groceryCategory), diameter: 125)
                }
            }
            .padding(7)
        }
    }
}

struct GroceryGridView_Previews: PreviewProvider {
    static let groceryItems: [GroceryItem] = []
    static var previews: some View {
        GroceryGridView(groceryItems: groceryItems)
        GroceryGridView(groceryItems: groceryItems)
            .preferredColorScheme(.dark)
    }
}

