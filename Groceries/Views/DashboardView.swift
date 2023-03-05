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
            VStack(spacing: 20) {
                NavigationLink(destination: ContentView()) {
                    Text("Go to First View")
                }
            }
            .navigationBarTitle("Dashboard")
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
