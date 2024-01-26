//
//  MenuView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-21.
//

import SwiftUI

struct MenuSearchView: View {
    private let drivers = ["Lewis Hamilton", "Max Verstappen", "Charles Leclerc"]
    
    private let driversDict: [String: TradingCard] = [
        "Lewis Hamilton": TradingCardHamilton,
        "Max Verstappen": TradingCardVerstappen,
        "Charles Leclerc": TradingCardLeclerc]
    
    @State private var locationSearch = ""
    @State private var destination = ""
    
    //private let driverList = [TradingCardHamilton, TradingCardVerstappen, TradingCardLeclerc]
    
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
                
                /*List(driverList) { driverInList in
                    NavigationLink(
                        destination: {DetailedDriverView(driver: driverInList)
                        },
                        label: {ListItem(driver: driverInList)
                        })
                }*/
            }
            .navigationTitle("Famous F1 Drivers")
        }
        .searchable(text: $locationSearch)
    }
}

#Preview {
    MenuSearchView()
}
