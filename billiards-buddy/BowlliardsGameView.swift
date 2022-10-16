//
//  BowlliardsGameView.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 10/16/22.
//

import SwiftUI

struct BowlliardsGameView: View {
    @ObservedObject var bowlliardsGame: BowlliardsGame

    var body: some View {
        ScrollView {
            ForEach(bowlliardsGame.frames, id: \.self) { frame in
                BowlliardsFrameView(bowlliardsFrame: frame)
            }
        }
    }
}
