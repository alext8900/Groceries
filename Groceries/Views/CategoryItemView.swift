//
//  CategoryView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI

struct CategoryItemView: View {
    let categoryImage: String
    let categoryName: String
    let action: () -> Void
    let category: GroceryCategory?
    
    @Binding var selectedCategory: GroceryCategory?
    
    var body: some View {
        Button(action: {
            self.selectedCategory = category
            print("Selected category ID: \(String(describing: selectedCategory?.id))")
            print("Category ID: \(String(describing: category?.id))")
            print(selectedCategory?.name ?? "")
            print(categoryName)
        }) {
            HStack(spacing: 8) {
                Image(categoryImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .padding(.trailing, 1)
                Text(categoryName)
                    .font(.headline)
                    .padding(.trailing, 13)
                
            }
            .padding(.vertical, 3)
            .padding(.horizontal, 1)
            .background(category?.name == selectedCategory?.name ? Color.blue : Color.gray.opacity(0.3))
            .foregroundColor(.black)
            .clipShape(Capsule())
        }
    }
}

//struct CategoryItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryItemView(categoryImage: "apple", categoryName: "Produce", action: {
//            
//        }, selectedCategory: .constant(nil))
//            .previewLayout(.sizeThatFits)
//            .padding()
//    }
//}
