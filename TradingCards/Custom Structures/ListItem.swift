//
//  ListItem.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-21.
//

import SwiftUI

struct ListItem: View {
    
    let driver: TradingCard
    
    var body: some View {
        HStack {
            Image(driver.driverImageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .clipShape(Circle())
            
            VStack {
                HStack {
                    Text("\(driver.driverName) \(driver.driverSurname)")
                        .bold()
                        .font(.title3)
                    
                    Spacer()
                }
                
                HStack {
                    Text(driver.shortDescription)
                    Spacer()
                }
            }
            .padding(.leading, 5)
        }
        .frame(height: 60)
    }
}

#Preview {
    ListItem(driver: TradingCardHamilton)
}
