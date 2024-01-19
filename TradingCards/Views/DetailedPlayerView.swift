//
//  ContentView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-19.
//

import SwiftUI

struct DetailedPlayerView: View {
    let driver: TradingCard
    
    var body: some View {
        VStack {
            driver.driverColor
                .ignoresSafeArea()
        }
        .navigationTitle(driver.driverName)
    }
}

#Preview {
    DetailedPlayerView(driver: TradingCardHamilton)
}
