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

    @ObservedObject var viewModel = GroceryViewModel()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 30) {
                ForEach(viewModel.groceryItems) { item in
                    GroceryItemView(groceryItem: GroceryItem(id: item.id, name: item.name, image: item.image, groceryCategory: item.groceryCategory))
                }
            }
            .padding(7)
        }
    }
}

struct GroceryGridView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryGridView()
    }
}

