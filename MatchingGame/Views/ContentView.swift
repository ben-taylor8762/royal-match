//
//  ContentView.swift
//  MatchingGame
//
//  Created by Ben Taylor on 4/24/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(Game.self) private var game
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("castle")
                    .resizable()
//                    .scaledToFit()
                    .ignoresSafeArea()
//                ScrollView {
                    VStack {
                        Spacer()
                        Text("Royal Match!")
                            .font(.largeTitle)
                            .foregroundColor(.purple)
                            .shadow(radius: 2)
                        Group {
                            if game.hasWon {
                                MenuView()
                                    .padding()
                            } else {
                                GameView()
                                    .frame(maxHeight: .infinity)
                            }
                        }
                        Spacer()
                    }
                    .toolbar {
                        if !game.hasWon {
                            ToolbarItem(placement: .topBarLeading) {
                                Button(action: {
                                    game.hasWon = true
                                },label: {
                                    Image(systemName: "chevron.backward")
                                        .foregroundStyle(.purple)
                                    Text("Back")
                                        .foregroundStyle(.purple)
                                })
                            }
                        }
                    }
//                }
            }
            .frame(maxHeight: .infinity)
        }
    }
}

#Preview {
    ContentView()
        .environment(Game())
}
