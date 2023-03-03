//
//  GroceryView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI
import Foundation
import Combine


struct GroceryView: View {

    @ObservedObject var viewModel = GroceryViewModel()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 30) {
                ForEach(viewModel.groceryItems) { item in
                    Button(action: {
                        print("Button tapped: \(item.name)")
                    }) {
                        VStack {
                            ZStack {
                                Circle()
                                    .fill(Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 80, height: 80)
                                        .padding()
                                   
                                
                            }
                            VStack(alignment: .leading) {
                                Spacer()
                                Text(item.name)
                                    .font(.headline)
                                .foregroundColor(.primary)
                                
                                Text(item.groceryCategory)
                                    .font(.footnote)
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 16)
        }
    }
}

struct GroceryView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryView()
    }
}

