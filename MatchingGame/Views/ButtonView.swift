//
//  ButtonView.swift
//  MatchingGame
//
//  Created by Ben Taylor on 4/30/25.
//

import SwiftUI

struct ButtonView: View {
    @Environment(Game.self) private var game
    var size: String
    var princessCount: Int
    var columnCount: Int
    
    var body: some View {
        Button {
            game.startNewGame(princessCount: princessCount, columnCount: columnCount)
            game.hasWon = false
        } label: {
            Text(size)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color.purple).frame(minWidth: 180))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ButtonView(size: "4x4", princessCount: 8, columnCount: 4)
        .environment(Game())
}
