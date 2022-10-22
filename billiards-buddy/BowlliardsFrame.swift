//
//  BowlliardsFrame.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 10/15/22.
//

import Foundation

class BowlliardsFrame: Hashable, ObservableObject {

    var frame: Int
    @Published var score1: String
    @Published var score2: String
    @Published var score3: String

    init(frame: Int) {
        self.frame = frame
        self.score1 = "-"
        self.score2 = "-"
        self.score3 = "-"
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(frame)
    }

    static func == (lhs: BowlliardsFrame, rhs: BowlliardsFrame) -> Bool {
        lhs.frame == rhs.frame
    }
}
