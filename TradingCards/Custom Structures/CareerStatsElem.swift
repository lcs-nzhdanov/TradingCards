//
//  CareerStatsView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-21.
//

import SwiftUI

struct CareerStatsElem: View {
    let wantedStat: String
    let wantedNumber: Int
    
    var body: some View {
        VStack {
            HStack {
                Text(wantedStat)
                Spacer()
            }
            
            HStack {
                Text("\(wantedNumber)")
                Spacer()
            }
        }
        .frame(maxWidth: 100)
        .padding(.horizontal, 15)
    }
}

#Preview {
    CareerStatsElem(wantedStat: "Points", wantedNumber: 1)
}
