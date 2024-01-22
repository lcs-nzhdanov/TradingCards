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
    
    @State private var locationSearch = ""
    @State private var destination = ""
    
    var searchResults: [String] {
        if locationSearch.isEmpty {
            return drivers
        } else {
            var filteredDrivers: [String] = []
            for driver in drivers {
                if driver.lowercased().contains(locationSearch.lowercased()) {
                    filteredDrivers.append(driver)
                }
            }
            
            return filteredDrivers
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                
                List {
                    ForEach(searchResults, id: \.self) { driverName in
                        NavigationLink(
                            
                            destination: { DetailedDriverView(driver: driversDict[driverName]!)
                        },
                           label: { ListItem(driver: driversDict[driverName]!)
                        })
                    }
                }
                
            }
            .navigationTitle("Famous F1 Drivers")
        }
        //HOW TO MAKE SEARCH WORK
        .searchable(text: $locationSearch)
    }
}

#Preview {
    MenuSearchView()
}
