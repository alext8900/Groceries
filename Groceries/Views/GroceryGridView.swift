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
    @Binding var selectedCategory: GroceryCategory?

    @ObservedObject var viewModel = GroceryViewModel()
    
    var body: some View {
        print("Selected category: \(selectedCategory?.name ?? "")")
        print("Grocery items: \(viewModel.groceryItems.count)")
        return ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 30) {
                ForEach(viewModel.groceryItems.filter { $0.groceryCategory == selectedCategory?.name ?? "Produce"}, id: \.id) { item in
                    GroceryItemView(groceryItem: item, diameter: 125)
                }
            }
            .padding(7)
        }
    }
}

//struct GroceryGridView_Previews: PreviewProvider {
//    static let groceryItems: [GroceryItem] = []
//    @State static var selectedCategory: GroceryCategory?
//    static var previews: some View {
//        GroceryGridView(groceryItems: groceryItems, selectedCategory: $selectedCategory)
//        GroceryGridView(groceryItems: groceryItems, selectedCategory: $selectedCategory)
//            .preferredColorScheme(.dark)
//    }
//}
//
