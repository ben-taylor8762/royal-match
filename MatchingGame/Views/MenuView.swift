//
//  StartView.swift
//  MatchingGame
//
//  Created by Ben Taylor on 4/24/25.
//

import SwiftUI

struct MenuView: View {
    @Environment(Game.self) private var game
    private var sizes = [["2x2", 2, 2], ["2x3", 3, 2], ["2x4", 4, 2], ["3x4", 6, 3], ["4x4", 8, 4], ["4x5", 10, 4]]
    
    var body: some View {
//        ScrollView {
            Text("Pick a level to begin")
                .foregroundColor(.purple)
                .shadow(radius: 2)

        let gridItems = Array(repeating: GridItem(.fixed(180), spacing: 24), count: 2)
        LazyVGrid(columns: gridItems, spacing: 24) {
            ButtonView(size: "2x2", princessCount: 2, columnCount: 2)
            ButtonView(size: "2x3", princessCount: 3, columnCount: 2)
            ButtonView(size: "2x4", princessCount: 4, columnCount: 2)
            ButtonView(size: "3x4", princessCount: 6, columnCount: 3)
            ButtonView(size: "4x4", princessCount: 8, columnCount: 4)
            ButtonView(size: "4x5", princessCount: 10, columnCount: 4)
        }
//        }
    }
}

#Preview {
    MenuView()
        .environment(Game())
}
