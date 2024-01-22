//
//  MenuView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-21.
//

import SwiftUI

struct MenuSearchView: View {
    private let drivers = ["Lewis Hamilton", "Max Verstappen"]
    private let driversDict: [String: TradingCard] = [
        "Lewis Hamilton": TradingCardHamilton,
        "Max Verstappen": TradingCardVerstappen]

    @State private var searchResults: [String] = []
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                List {
                    ForEach(drivers, id: \.self) { driverName in
                        NavigationLink(
                            
                            destination: {
                            DetailedDriverView(driver: driversDict[driverName]!)
                        },
                           label: { ListItem(driver: driversDict[driverName]!)
                        })
                    }
                }
                
            }
            .navigationTitle("Famous F1 Drivers")
        }
        .searchable(text: $locationSearch) {
            ForEach(searchResults, id: \.self) { name in
                Button(name) {
                
                }
            }
        }
        .onChange(of: locationSearch) { _, location in
            searchResults = drivers.filter { name in
                name.hasPrefix(locationSearch)
            }
        }
    }
}

#Preview {
    MenuSearchView()
}
