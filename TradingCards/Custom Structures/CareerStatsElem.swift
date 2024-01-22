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
                //Spacer()
            }
            
            HStack {
                Text("\(wantedNumber)")
               // Spacer()
            }
        }
        .frame(minWidth: 0)
        .padding(.horizontal, 5)
    }
}

#Preview {
    CareerStatsElem(wantedStat: "Points", wantedNumber: 1)
}
