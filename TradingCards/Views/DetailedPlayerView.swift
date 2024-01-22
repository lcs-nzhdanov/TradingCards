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
        NavigationStack {
            VStack {
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(driver.colorSet[1])
                        .padding(15)
                        .aspectRatio(1, contentMode: .fit)
                    
                    Rectangle()
                        .fill(driver.colorSet[2])
                        .padding(30)
                        .aspectRatio(1, contentMode: .fit)
                    
                    Image(driver.driverImageName)
                        .resizable()
                        .padding(45)
                        .aspectRatio(1, contentMode: .fit)
                    
                    HStack {
                        Spacer()
                        
                        VStack {
                            Spacer()
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 95, height: 95)
                                
                                Image(driver.teamImageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                            }
                            .padding(.bottom, 150)
                            .padding(.trailing, 25)
                        }
                    }
                }
                .background(driver.colorSet[0])
                
                VStack {
                    VStack {
                        Text("Career Stats")
                            .font(.title3)
                            .bold()
                        
                        HStack {
                            Spacer()
                            
                            VStack {
                                HStack {
                                    Text("Points")
                                    //Spacer()
                                }
                                
                                HStack {
                                    Text(String(format: "%.1f", driver.careerPoints))
                                    //Spacer()
                                }
                            }
                            
                            Spacer()
                            
                            CareerStatsElem(
                                wantedStat: "Wins",
                                wantedNumber: driver.careerWins
                            )
                            
                            Spacer()
                            
                            CareerStatsElem(
                                wantedStat: "Podiums",
                                wantedNumber: driver.careerPodiums
                            )
                            
                            Spacer()
                        }
                    }
                    .background(.white)
                }
            }
            
        }
    }
}

#Preview {
    DetailedPlayerView(driver: TradingCardHamilton)
}
