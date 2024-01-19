//
//  TradingCardsApp.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-19.
//

import SwiftUI

@main
struct TradingCardsApp: App {
    var body: some Scene {
        WindowGroup {
            DetailedPlayerView(driver: TradingCardHamilton)
        }
    }
}
