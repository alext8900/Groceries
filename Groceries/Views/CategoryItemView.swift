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
    
    @Binding var selectedCategory: GroceryCategory?
    
    var body: some View {
        Button(action: {
            self.selectedCategory = GroceryCategory(id: "3", name: categoryName, image: categoryImage)
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
            .background(selectedCategory?.name == categoryName ? Color.blue : Color.gray.opacity(0.3))
            .foregroundColor(.black)
            .clipShape(Capsule())
        }
    }
}

//struct CategoryItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryItemView(categoryImage: "Apple", categoryName: "Produce", action: {
//            
//        }, selectedCategory: .constant("Produce"))
//            .previewLayout(.sizeThatFits)
//            .padding()
//    }
//}
