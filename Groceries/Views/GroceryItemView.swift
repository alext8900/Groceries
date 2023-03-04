//
//  GroceryViewNew.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI

struct GroceryItemView: View {
    let groceryItem: GroceryItem
    
    var body: some View {
        Button(action: {
            print("Button Tapped: \(groceryItem.name)")
        }) {
            VStack {
                ZStack {
                    Circle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 115, height: 115)
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
}

struct GroceryItemView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryItemView(groceryItem: GroceryItem(id: "2", name: "Apple", image: "apple", groceryCategory: "Produce"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
