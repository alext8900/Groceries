//
//  CustomNavBar.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI

struct CustomNavBar: View {
    var body: some View {
        HStack {
            Button(action: {
                // Handle back button action here
            }) {
                Image(systemName: "line.horizontal.3")
            }
            Text("Create Shopping List")
                .font(.system(size: 25, weight: .semibold, design: .rounded))
            Spacer()
            Button(action: {
                // Handle right button action here
            }) {
                Image(systemName: "magnifyingglass")
            }
        }
        .padding(.horizontal)
        .frame(height: 44)
    }
}

struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBar()
            .previewLayout(.sizeThatFits)
    }
}
