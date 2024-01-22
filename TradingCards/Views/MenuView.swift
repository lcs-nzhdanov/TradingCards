//
//  MenuView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-21.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    //Hamilton
                    NavigationLink(destination: {
                        DetailedPlayerView(driver: TradingCardHamilton)
                    }, label: {
                        ListItem(driver: TradingCardHamilton)
                    })
                    
                    //Verstappen
                    NavigationLink(destination: {
                        DetailedPlayerView(driver: TradingCardVerstappen)
                    }, label: {
                        ListItem(driver: TradingCardVerstappen)
                    })
                    
                    NavigationLink(destination: {
                        DetailedPlayerView(driver: TradingCardLeclerc)
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
    MenuView()
}
