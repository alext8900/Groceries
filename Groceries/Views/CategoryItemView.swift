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
    let diameter: CGFloat
    
    var body: some View {
        Button(action: {
            self.selectedCategory = category
        }) {
            ZStack {
                Capsule()
                    .fill(selectedCategory == category ? Color.blue : Color.gray.opacity(0.1))
                    .frame(width: 150, height: 43)
                    .overlay(
                        Capsule()
                            .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 0.9)
                            .blur(radius: 2.5)
                    )
                    .shadow(
                        color: colorScheme == .dark ? Color.black.opacity(0.2) : Color.white.opacity(0.2),
                        radius: 143 / 20,
                        x: 43 / 20,
                        y: 100 / 10
                    )
                HStack(spacing: 14) {
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
                .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
            }
        }
    }
    @Environment(\.colorScheme) var colorScheme
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(categoryImage: "apple", categoryName: "Produce", action: {
            
        }, category: nil, selectedCategory: .constant(nil), diameter: 125)
            .previewLayout(.sizeThatFits)
            .padding()
        CategoryItemView(categoryImage: "apple", categoryName: "Produce", action: {
            
        }, category: nil, selectedCategory: .constant(nil), diameter: 125)
            .previewLayout(.sizeThatFits)
            .padding()
            .preferredColorScheme(.dark)
    }
}
