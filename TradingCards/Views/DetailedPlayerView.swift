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
            ZStack {
                Rectangle()
                    .fill(driver.colorSet[1])
                    .padding(15)
                    .aspectRatio(1, contentMode: .fit)
                
                Rectangle()
                    .fill(driver.colorSet[2])
                    .padding(30)
                    .aspectRatio(1, contentMode: .fit)
                
                Rectangle()
                    .fill(.white)
                    .padding(45)
                    .aspectRatio(1, contentMode: .fit)
            }
        }
        .navigationTitle("Hi")
        .background(driver.colorSet[0])
    }
}

#Preview {
    DetailedPlayerView(driver: TradingCardHamilton)
}
