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
    @State var selectedCategory: GroceryCategory?

    @ObservedObject var viewModel = GroceryViewModel()
    
    var body: some View {
        return ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 30) {
                ForEach(groceryItems.filter { $0.groceryCategory == selectedCategory?.name }) { item in
                    GroceryItemView(groceryItem: item, diameter: 125)
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

