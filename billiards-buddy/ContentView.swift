//
//  ContentView.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 7/23/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var games = BowlliardsGames()
    var body: some View {
        NavigationView {
            List {
                ForEach(games.games) { game in
                    NavigationLink(
                        destination: BowlliardsGameView(bowlliardsGame: game)) {
                            Text(game.name)
                    }
                }
            }
            .navigationTitle("Bowlliards Games")
            .navigationBarItems(trailing:
                Button {
                    games.games.append(BowlliardsGame())
                } label: {
                Image(systemName: "plus")
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
