//
//  GroceryView.swift
//  Groceries
//
//  Created by Alex Thompson on 3/3/23.
//

import SwiftUI
import Foundation
import Combine

struct GroceryItem: Identifiable, Codable {
    let id: String
    let name: String
    let image: String
    let groceryCategory: String
}

struct JsonData: Decodable {
    let groceryItems: [GroceryItem]

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        groceryItems = try container.decode([GroceryItem].self, forKey: .groceryItems)
    }

    enum CodingKeys: String, CodingKey {
        case groceryItems
    }
}

class GroceryViewModel: ObservableObject {
    @Published var groceryItems = [GroceryItem]()
    
    init() {
        if let url = Bundle.main.url(forResource: "groceryItems", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(JsonData.self, from: data)
                groceryItems = jsonData.groceryItems
            } catch {
                print("Error decoding JSON: \(error)")
            }
        } else {
            print("Unable to find json file")
        }
    }
}

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

