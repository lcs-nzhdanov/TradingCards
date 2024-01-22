//
//  ContentView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-19.
//

import SwiftUI

struct DetailedDriverView: View {
    let driver: TradingCard
    
    //HOW TO ADD A BACKGROUND INTO BOTTOM WHEN SCROLLING?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Spacer()
                    
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 15)
                            .fill(driver.colorSet[1])
                            .padding(15)
                            .aspectRatio(1, contentMode: .fit)
                        
                        RoundedRectangle(cornerRadius: 15)
                            .fill(driver.colorSet[2])
                            .padding(30)
                            .aspectRatio(1, contentMode: .fit)
                        
                        Image(driver.driverImageName)
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
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

                                .padding(.horizontal, 15)
                            }
                        }
                        .padding(.top, 5)
                        
                        
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
                        .padding(.bottom, 10)
                    }
                    .background(RoundedRectangle(cornerRadius: 15) .fill(.white))
                    
                    .padding(.horizontal, 5)
                    .padding(.bottom, 10)
                }
                .background(driver.colorSet[0])
                .ignoresSafeArea()
                .navigationTitle("\(driver.driverName) \(driver.driverSurname)")
                }
            }
        }
    }

#Preview {
    DetailedDriverView(driver: TradingCardHamilton)
}
