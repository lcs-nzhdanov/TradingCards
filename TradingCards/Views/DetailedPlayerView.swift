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
            ScrollView {
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
                                .padding(.bottom, 25)
                                .padding(.trailing, 25)
                            }
                        }
                    }

                    
                    VStack {
                        VStack {
                            HStack {
                                Text("Career Stats")
                                    .font(.title3)
                                    .bold()
                                
                                Spacer()
                            }
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            
                            HStack {
                                CareerStatsElem(
                                    wantedStat: "Wins",
                                    wantedNumber: driver.careerWins
                                )
                                
                                
                                CareerStatsElem(
                                    wantedStat: "Podiums",
                                    wantedNumber: driver.careerPodiums
                                )
                                
                                VStack {
                                    HStack {
                                        Text("Points")
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Text(String(format: "%.1f", driver.careerPoints))
                                        Spacer()
                                    }
                                }
                                .frame(maxWidth: 100)
                                //HOW TO AVOID FRAME HERE?
                                .padding(.horizontal, 15)
                            }
                        }
                        
                        
                        VStack {
                            HStack {
                                Text("Famous Race")
                                    .font(.title3)
                                    .bold()
                                
                                Spacer()
                            }
                            .padding(.horizontal, 15)
                            .padding(.vertical, 5)
                            
                            Text(driver.famousRace)
                                .padding(.horizontal, 15)
                        }
                    }
                    .background(.white)
                    .padding(.horizontal, 5)
                }
                .background(driver.colorSet[0])
                .ignoresSafeArea()
                
            }
        }
    }
}

#Preview {
    DetailedPlayerView(driver: TradingCardHamilton)
}
