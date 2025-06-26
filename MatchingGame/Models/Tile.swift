//
//  Tile.swift
//  MatchingGame
//
//  Created by Ben Taylor on 4/24/25.
//

import Foundation

@Observable
class Tile: Identifiable {
    let id = UUID()
    
    var isFlipped = Flip.wrong
    var isCorrect = Flip.wrong
    var princess: String
    
    init(princess: String) {
        self.princess = princess
    }
    
}

extension Tile: Equatable {
    static func == (lhs: Tile, rhs: Tile) -> Bool {
        lhs.id == rhs.id
    }
}

extension Tile: Comparable {
    static func < (lhs: Tile, rhs: Tile) -> Bool {
        lhs.princess < rhs.princess
    }
}

extension Tile: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
