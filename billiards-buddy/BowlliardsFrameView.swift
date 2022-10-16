//
//  BowlliardsFrameView.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 7/24/22.
//

import SwiftUI

struct BowlliardsFrameView: View {
    @ObservedObject var bowlliardsFrame: BowlliardsFrame
    @State private var isShowingPopover = false
    @State private var isShowingPopover2 = false

    var body: some View {
        HStack {
            Text(String(bowlliardsFrame.frame))
                .padding()
            Button(String(bowlliardsFrame.score1)) {
                self.isShowingPopover = true
            }
                .padding()
                .cornerRadius(5)
                .border(Color.black, width: 2)
                .popover(isPresented: $isShowingPopover) {
                    BowlliardsScoreView(score: $bowlliardsFrame.score1)
                }
            Button(String(bowlliardsFrame.score2)) {
                self.isShowingPopover2 = true
            }
                .padding()
                .cornerRadius(5)
                .border(Color.black, width: 2)
                .popover(isPresented: $isShowingPopover2) {
                    BowlliardsScoreView(score: $bowlliardsFrame.score2)
                }
        }
            .padding()
    }
}
