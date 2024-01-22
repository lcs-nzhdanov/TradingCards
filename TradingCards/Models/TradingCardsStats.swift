//
//  TradingCardProperties.swift
//  TradingCards
//
//  Created by Nikita Zhdanov on 2024-01-19.
//

import Foundation
import SwiftUI
import Observation

@Observable
class TradingCard {
    let driverName: String
    let driverSurname: String
    let driverTeam: String
    let teamImageName: String
    let driverImageName: String
    let colorSet: [Color]
    
    let careerPoints: Double
    let careerWins: Int
    let careerPodiums: Int
    
    let famousRace: String
    let shortDescription: String
    var isFavourite: Bool
    
    let accentColor: Color
    
    init(driverName: String, driverSurname: String, driverTeam: String, teamImageName: String, driverImageName: String, colorSet: [Color], careerPoints: Double, careerWins: Int, careerPodiums: Int, famousRace: String, shortDescription: String, isFavourite: Bool = false, accentColor: Color = .accentColor) {
        self.driverName = driverName
        self.driverSurname = driverSurname
        self.driverTeam = driverTeam
        self.teamImageName = teamImageName
        self.driverImageName = driverImageName
        self.colorSet = colorSet
        self.careerPoints = careerPoints
        self.careerWins = careerWins
        self.careerPodiums = careerPodiums
        self.famousRace = famousRace
        self.shortDescription = shortDescription
        self.isFavourite = isFavourite
        self.accentColor = accentColor
    }
    
    
}


let TradingCardHamilton = TradingCard(
    driverName: "Lewis",
    driverSurname: "Hamilton",
    driverTeam: "Mercedes",
    teamImageName: "mercedesLogo",
    driverImageName: "lewisHLogo",
    colorSet: [Color.lewisHColor1, Color.lewisHColor2, Color.lewisHColor3],
    
    careerPoints: 4639.5,
    careerWins: 103,
    careerPodiums: 197,
    famousRace: "At the 2008 British Grand Prix, Lewis Hamilton's masterful win in challenging wet conditions at Silverstone demonstrated his exceptional skill, significantly outpacing his rivals by a minute, and solidifying his status as a Formula 1 legend.",
    shortDescription: "Simply The Best!",
    accentColor: .green

)

let TradingCardVerstappen = TradingCard(
    driverName: "Max",
    driverSurname: "Verstappen",
    driverTeam: "Red Bull Racing",
    teamImageName: "redbullLogo",
    driverImageName: "maxVLogo",
    colorSet: [.maxVColor1, .white, .red],
    careerPoints: 2586.5,
    careerWins: 54,
    careerPodiums: 98,
    famousRace: "At the 70th Anniversary Grand Prix at Silverstone, Max Verstappen's remarkable victory showcased his strategic brilliance and driving prowess. Expertly managing his tires under challenging conditions, he outperformed the dominant Mercedes team, underlining his status as a rising star in Formula 1 and marking a pivotal moment in his racing career.",
    shortDescription: "The Dutch Lion"
)

let TradingCardLeclerc = TradingCard(
    driverName: "Charles",
    driverSurname: "Leclerc",
    driverTeam: "Ferrari",
    teamImageName: "ferrariLogo",
    driverImageName: "leclercImage",
    colorSet: [.cyan, .black, .green],
    careerPoints: 1074,
    careerWins: 5,
    careerPodiums: 30,
    famousRace: "In the 2019 Italian Grand Prix at Monza, Charles Leclerc showcased remarkable talent and tenacity. Defending fiercely against Mercedes, he secured an iconic victory for Ferrari at their home race. This triumph emphatically established Leclerc as a formidable contender in Formula 1's new era.",
    shortDescription: ""
)
