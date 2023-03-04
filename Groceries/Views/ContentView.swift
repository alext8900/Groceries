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
            CategoryGridView(categoryItem: groceryCategories)
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
