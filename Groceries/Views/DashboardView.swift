//
//  DashboardView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/5/23.
//

import SwiftUI
struct DashboardView: View {
    var body: some View {
        let groceriesCard = CardView(imageName: "cart", title: "Groceries", backgroundColor: Color.blue, destination: AnyView(GroceryView()))
        let stockCard = CardView(imageName: "tray.and.arrow.up", title: "Stock", backgroundColor: Color.green, destination: AnyView(Text("Hello")))
        let groceryListsCard = CardView(imageName: "list.bullet", title: "Grocery Lists", backgroundColor: Color.purple, destination: AnyView(Text("Grocery Lists")))
        let settingsCard = CardView(imageName: "gear", title: "Settings", backgroundColor: Color.orange, destination: AnyView(Text("Settings")))
        let profileCard = CardView(imageName: "person", title: "Profile", backgroundColor: Color.red, destination: AnyView(Text("Profile")))
        let cards = [groceriesCard, stockCard, groceryListsCard, settingsCard, profileCard]
        NavigationView {
            VStack(alignment: .leading) {
                Text("Dashboard")
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .padding(10)
                ScrollView(showsIndicators: false) {
                    ForEach(cards, id: \.title) { card in
                        card
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
        DashboardView().preferredColorScheme(.dark)
    }
}
