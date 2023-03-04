//
//  CategoryGridView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI



struct CategoryGridView: View {
    @State private var selectedCategory: GroceryCategory?
    let categoryItem: [GroceryCategory]
    func print() {
        
    }
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.fixed(30), spacing: 16)], spacing: 16) {
                ForEach(categoryItem) { category in
                    CategoryItemView(categoryImage: category.image, categoryName: category.name, action: print, selectedCategory: $selectedCategory)
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 40)
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(categoryItem: groceryCategories)
            .previewLayout(.sizeThatFits)
    }
}
