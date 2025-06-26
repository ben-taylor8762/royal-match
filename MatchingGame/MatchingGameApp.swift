//
//  MatchingGameApp.swift
//  MatchingGame
//
//  Created by Ben Taylor on 4/24/25.
//

import SwiftUI

@main
struct MatchingGameApp: App {
    @State private var game = Game()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(game)
        }
    }
}
