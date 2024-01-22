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
                    ListItem(driver: TradingCardHamilton)
                    
                    
                }
            }
            .navigationTitle("Famous F1 Drivers")
        }
    }
}

#Preview {
    MenuView()
}
