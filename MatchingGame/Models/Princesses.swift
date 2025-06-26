//
//  Princesses.swift
//  MatchingGame
//
//  Created by Ben Taylor on 4/27/25.
//

import Foundation

struct Princesses {
    let chosen: [String]
    
    static func selectRandomPrincesses(count: Int) -> [String] {
        var newChosen = Array(names.shuffled().prefix(count))
        while newChosen.sorted() == newChosen {
            newChosen.shuffle()
        }
        return newChosen
    }
    
    static let names: [String] = [
        "princess1",
        "princess2",
        "princess3",
        "princess4",
        "princess5",
        "princess6",
        "princess7",
        "princess8",
        "princess9",
        "princess10",
        "princess11",
        "princess12"
    ]
}
