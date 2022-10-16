//
//  BilliardsGames.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 10/16/22.
//

import Foundation

class BowlliardsGames: ObservableObject {
    @Published var games: [BowlliardsGame] = []

    init() {
        self.games.append(BowlliardsGame())
    }
}
