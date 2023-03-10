//
//  BasketView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/6/23.
//

import SwiftUI

struct BasketView: View {
    var body: some View {

        let circleViews = [
            DashboardCircleView(item: CircleItem(imageName: "cart", title: "Groceries", destination: AnyView(GroceryView()))),
            DashboardCircleView(item: CircleItem(imageName: "tray.and.arrow.up", title: "Stock", destination: AnyView(Text("Stock")))),
            DashboardCircleView(item: CircleItem(imageName: "list.bullet", title: "Lists", destination: AnyView(Text("Grocery List")))),
            DashboardCircleView(item: CircleItem(imageName: "gear", title: "Settings", destination: AnyView(Text("Settings")))),
            DashboardCircleView(item: CircleItem(imageName: "person", title: "Profile", destination: AnyView(Text("Profile")))),
            DashboardCircleView(item: CircleItem(imageName: "doc.plaintext", title: "Recipes", destination: AnyView(Text("Recipes"))))
            
        ]
        VStack {
            Text("CSL")
                .font(.system(size: 40, weight: .bold))
                .padding(.top, 60)
                .padding(.bottom, 20)
            
            
            
            HStack(spacing: 200) {
                circleViews[0]
                circleViews[1]
            }
            Spacer()
            
            HStack(spacing: 200) {
                circleViews[2]
                circleViews[3]
            }
            Spacer()
            
            HStack(spacing: 200) {
                circleViews[4]
                circleViews[5]
            }
            Spacer()
        }
        .background(
            Image(systemName: "cart")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .frame(width: 440, height: 350)
        )
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView()
    }
}
