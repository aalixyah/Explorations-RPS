//
//  Sign.swift
//  Rock paper scissors
//
//  Created by AALIYAH on 23/05/2021.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}


enum Sign {
    case rock, paper, scissors
    

var emoji: String{
        switch self {
        case .rock:
            return "👊🏿"
        case .paper:
            return "✋🏿"
        case .scissors:
            return "✌🏿"
        }
    
    }
    
    func takeTurn(_ opponent: Sign) -> GameState {
        switch self {
        case .rock:
            switch opponent {
        case .rock:
            return GameState.draw
        case .paper:
            return GameState.loose
        case .scissors:
            return GameState.win
        }
        case .paper:
            switch opponent {
        case .rock:
            return GameState.win
        case .paper:
            return GameState.draw
        case .scissors:
            return GameState.loose
            }
        case .scissors:
            switch opponent {
        case .rock:
            return GameState.loose
        case .paper:
            return GameState.win
        case .scissors:
            return GameState.draw
            }
    }
    }

   
}

