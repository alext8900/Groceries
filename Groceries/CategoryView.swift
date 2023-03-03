//
//  CategoryView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI

struct CategoryView: View {
    let categoryImage: String
    let categoryName: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
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
            .background(Color.gray.opacity(0.5))
            .foregroundColor(.black)
        .clipShape(Capsule())
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryImage: "strawberry", categoryName: "Fruits", action: {print("Button Tapped")})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
