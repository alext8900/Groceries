//
//  ContentView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CustomNavBar()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    CategoryView(categoryImage: "blueberry", categoryName: "Fruits", action: {print("button tapped")})
                    CategoryView(categoryImage: "corn", categoryName: "Veggies", action: {print("button tapped")})
                    CategoryView(categoryImage: "whitebread", categoryName: "Bakery", action: {print("button tapped")})
                    CategoryView(categoryImage: "mango", categoryName: "Meat", action: {print("button tapped")})
                    CategoryView(categoryImage: "cherry", categoryName: "Fish", action: {print("button tapped")})
                }
                .padding(.horizontal)
            }
            Spacer()
            GroceryGridView()

        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
