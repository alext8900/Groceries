//
//  ContentView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI

struct ContentView: View {
    static let groceryItems: [GroceryItem] = []
    @State var selectedCategory: GroceryCategory?
    var body: some View {
        VStack {
            CustomNavBar()
            CategoryGridView(categoryItem: groceryCategories)
            GroceryGridView(groceryItems: ContentView.groceryItems, selectedCategory: selectedCategory?.name ?? "Produce")

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
