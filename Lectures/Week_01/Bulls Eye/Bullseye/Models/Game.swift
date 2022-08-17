//
//  Game.swift
//  Bullseye
//
//  Created by J Rogel PhD on 11/08/2022.
//

import Foundation

struct LeaderBoardEntry {
    let score: Int
    let date: Date
}

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderboardEntries: [LeaderBoardEntry] = []
    
    init(loadTestData: Bool = false) {
        if loadTestData {
            leaderboardEntries.append(LeaderBoardEntry(score: 100, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 800, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 200, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 50, date: Date()))
            leaderboardEntries.append(LeaderBoardEntry(score: 20, date: Date()))
            leaderboardEntries.sort {$0.score > $1.score}
        }
    }
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        let bonus: Int
        
        if difference==0 {
            bonus = 100
        } else if difference<=2 {
            bonus = 50
        } else {
            bonus = 0
        }
        return 100 - difference + bonus
    }
    
    mutating func addToLeaderboard(point: Int) {
        leaderboardEntries.append(LeaderBoardEntry(score: point, date: Date()))
        leaderboardEntries.sort { $0.score > $1.score }
        
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderboard(point: points)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
