//
//  ContentView.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-19.
//

import SwiftUI

struct DetailedDriverView: View {
    @Bindable var driver: TradingCard
    
    //HOW TO ADD A BACKGROUND INTO BOTTOM WHEN SCROLLING?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                ZStack {
                    
                    Color(driver.colorSet[0])
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("\(driver.driverName) \(driver.driverSurname)")
                            .font(.custom("Formula1", size: 36))
                            .foregroundStyle(.white)
                            .padding(.top, 30)
                            
                           // .bold()
                        
                        
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
                                        //RoundedRectangle(cornerRadius: 50)
                                         //   .frame(width: 95, height: 95)
                                        
                                        Image(driver.teamImageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100, height: 100)
                                            .shadow(radius: 3)
                                        
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
                            .padding(.vertical, 10)
                        }
                        .background(RoundedRectangle(cornerRadius: 15) .fill(.white))
                        
                        .padding(.horizontal, 5)
                        .padding(.bottom, 10)
                    }
                    .ignoresSafeArea()
                }
              //  .navigationTitle("\(driver.driverName) //\(driver.driverSurname)")
              .navigationBarTitleDisplayMode(.inline)
                
                
            }
            .ignoresSafeArea(edges: .bottom)
            .toolbar{
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        driver.isFavourite.toggle()
                    } label: {
                        Image(systemName: driver.isFavourite ? "heart.fill" : "heart")
                            .tint(driver.colorSet[0])
                    }
                    
                }
                
                ToolbarItem(placement: .principal) {
                    Text("\(driver.driverName) \(driver.driverSurname)")
                      //  .font(.custom("Formula1 Display Regular"))
                        .font(.system(size: 25))
                        .foregroundStyle(driver.colorSet[0])
                        .bold()
                }
            }
        }
        
    }
    
    
    init(driver: TradingCard) {
        self.driver = driver
//        UIScrollView.appearance().backgroundColor = UIColor(driver.colorSet[0])
//        
//        let coloredAppearance = UINavigationBarAppearance()
//        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor(driver.colorSet[0])]
//        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(driver.colorSet[0])]
//        UINavigationBar.appearance().standardAppearance = coloredAppearance
//        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
//        
    }
    
    
}

#Preview {
    DetailedDriverView(driver: TradingCardVerstappen)
}
