//
//  CardView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/5/23.
//

import SwiftUI

struct CardView: View {
    let imageName: String
    let title: String
    let backgroundColor: Color
    let destination: AnyView
    
    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.white)
                    .padding(20)
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundColor)
            .cornerRadius(16)
            .padding(10)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "cart", title: "Groceries", backgroundColor: Color.blue, destination: AnyView(GroceryView()))
    }
}
