//
//  DashboardView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/5/23.
//

import SwiftUI
struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Dashboard")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .padding()
                Spacer()
                NavigationLink(destination: GroceryView()) {
                    Text("Groceries")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                NavigationLink(destination: Text("Placeholder")) {
                    Text("Placeholder")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
