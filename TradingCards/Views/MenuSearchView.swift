//
//  MenuView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-21.
//

import SwiftUI

struct MenuSearchView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    //Hamilton
                    NavigationLink(destination: {
                        DetailedDriverView(driver: TradingCardHamilton)
                    }, label: {
                        ListItem(driver: TradingCardHamilton)
                    })
                    
                    //Verstappen
                    NavigationLink(destination: {
                        DetailedDriverView(driver: TradingCardVerstappen)
                    }, label: {
                        ListItem(driver: TradingCardVerstappen)
                    })
                    
                    NavigationLink(destination: {
                        DetailedDriverView(driver: TradingCardLeclerc)
                    }, label: {
                        ListItem(driver: TradingCardLeclerc)
                    })
                }
            }
            .navigationTitle("Famous F1 Drivers")
        }
    }
}

#Preview {
    MenuSearchView()
}
