//
//  GroceryViewNew.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI

struct GroceryItemView: View {
    let groceryItem: GroceryItem
    let diameter: CGFloat
    
    var body: some View {
        Button(action: {
            print("Button Tapped: \(groceryItem.name)")
        }) {
            VStack {
                ZStack {
                    Circle()
                        .fill(colorScheme == .dark ? Color.white.opacity(0.1) : Color.gray.opacity(0.1))
                        .frame(width: diameter, height: diameter)
                        .overlay(
                            Circle()
                                .stroke(colorScheme == .dark ? Color.white : Color.black, lineWidth: 0.9)
                                .blur(radius: 5)
                        )
                        .shadow(
                            color: colorScheme == .dark ? Color.black.opacity(0.2) : Color.white.opacity(0.2),
                            radius: diameter / 20,
                            x: diameter / 20,
                            y: diameter / 10
                        )
                    Image(groceryItem.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .padding()
                }
                VStack(alignment: .leading) {
                    Text(groceryItem.name)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.primary)
                    
                    Text(groceryItem.groceryCategory)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
    @Environment(\.colorScheme) var colorScheme
}

struct GroceryItemView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryItemView(groceryItem: GroceryItem(id: "2", name: "Apple", image: "apple", groceryCategory: "Produce"), diameter: 125)
            .previewLayout(.sizeThatFits)
            .padding()
        GroceryItemView(groceryItem: GroceryItem(id: "2", name: "Apple", image: "apple", groceryCategory: "Produce"), diameter: 125)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
