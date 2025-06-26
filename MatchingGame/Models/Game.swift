//
//  Game.swift
//  MatchingGame
//
//  Created by Ben Taylor on 4/26/25.
//

import Foundation

@Observable
class Game {
    var tileCount = 8
    var tileCorrectCount = 0
    var size: CGFloat = 800
    private var princesses: [String]
    var firstFlipped = Tile(princess: "")
    var hasWon = true
    var canFlip = true
    var columnCount = 4
    
    var message: Message = .instructions
    var score = 0
    var tiles = [Tile]()
    
    init() {
        princesses = Princesses.selectRandomPrincesses(count: 2)
        startNewGame(princessCount: 4, columnCount: 4)
        size = 800 / CGFloat(tileCount)
    }
    
    func flipTile(flippedPrincess: String) -> Flip {
        if firstFlipped.princess == "" {
            firstFlipped.princess = flippedPrincess
            return .first
        } else if firstFlipped.princess == flippedPrincess {
            firstFlipped.princess = ""
            return .same
        } else {
            firstFlipped.princess = ""
            return .wrong
        }
    }
    
    // MARK: private implementation
    
    // update `tiles` with new unalphabetized set of words
    func startNewGame(princessCount: Int, columnCount: Int) {
        self.tileCount = princessCount * 2
        self.tileCorrectCount = 0
        self.columnCount = columnCount
        princesses = Princesses.selectRandomPrincesses(count: princessCount)
        princesses = princesses + princesses
        if !tiles.isEmpty {
            tiles.removeAll()
        }
        for princess in princesses {
            tiles.append(Tile(princess: princess))
        }
        randomizeTiles()
    }
    
    func getTileCount() -> Int {
        return tileCount
    }
    
    func randomizeTiles() {
        var tempTiles = tiles.shuffled()
        while tempTiles.sorted() == tempTiles {
            tempTiles.shuffle()
        }
        tiles = tempTiles
    }
}
