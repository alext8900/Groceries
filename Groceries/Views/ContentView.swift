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
        // Wrapped in a navigational view to force update my categories when a category was selected
        NavigationView {
            VStack {
                CustomNavBar()
                CategoryGridView(selectedCategory: $selectedCategory, categories: groceryCategories)
                
                //Wrap the grocery grid view inside of a navigation view
                NavigationView {
                    GroceryGridView(groceryItems: ContentView.groceryItems, selectedCategory: $selectedCategory)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
            // set the tag of each navigation link to the corresponding category
            .onChange(of: selectedCategory) { category in
                if let category = category {
                    DispatchQueue.main.async {
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        self.selectedCategory = category
                        // Force update view hierarchy
                        withAnimation {
                            self.selectedCategory = category
                        }
                    }
                }
            }
        }
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
