//
//  BilliardsGames.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 10/16/22.
//

import Foundation

class BowlliardsGames: ObservableObject {
    @Published var frames: [BowlliardsFrame] = (1...10).map { BowlliardsFrame(frame: $0) }
    @Published var games: [BowlliardsGame] = []
}
