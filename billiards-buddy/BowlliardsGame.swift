//
//  BowlliardsGame.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 10/15/22.
//

import Foundation

class BowlliardsGame: ObservableObject {
    @Published var frames: [BowlliardsFrame] = (1...10).map { BowlliardsFrame(frame: $0) }
}
