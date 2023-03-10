//
//  CategoryGridView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI



struct CategoryGridView: View {
    @Binding var selectedCategory: GroceryCategory?
    let categories: [GroceryCategory]
 
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.fixed(30), spacing: 16)], spacing: 16) {
                ForEach(categories, id: \.self) { category in
                    CategoryItemView(categoryImage: category.image, categoryName: category.name, action: {
                        DispatchQueue.main.async {
                            selectedCategory = category
                        }
                    }, category: category, selectedCategory: $selectedCategory, diameter: 125)
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 58)
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    @State static var selectedCategory: GroceryCategory?
    static var previews: some View {
        CategoryGridView(selectedCategory: $selectedCategory, categories: groceryCategories)
            .previewLayout(.sizeThatFits)
    }
}
