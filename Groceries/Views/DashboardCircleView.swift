//
//  DashboardCircleView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/6/23.
//

import SwiftUI

struct DashboardCircleView: View {
    let item: CircleItem
    
    var body: some View {
        NavigationLink(destination: item.destination) {
            VStack {
                Image(systemName: item.imageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width: 40, height: 40)
                
                Text(item.title)
                    .foregroundColor(.white)
                    .font(.caption)
            }
            .frame(width: 80, height: 80)
            .background(Color.blue)
            .cornerRadius(40)
        }
    }
}

struct CircleItem {
    let imageName: String
    let title: String
    let destination: AnyView
}

struct DashboardCircleView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCircleView(item: CircleItem(imageName: "gear", title: "Stuff", destination: AnyView(ContentView())))
    }
}
