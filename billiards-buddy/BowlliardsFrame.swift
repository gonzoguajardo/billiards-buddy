//
//  BowlliardsFrame.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 7/24/22.
//

import SwiftUI

struct BowlliardsFrame: View {
    var frame = 1
    @State var score1 = "-"
    @State var score2 = "-"
    @State var score3 = "-"
    @State private var isShowingPopover = false
    @State private var isShowingPopover2 = false

    var body: some View {
        HStack {
            Text(String(frame))
              .padding()
            Button(String(score1)) {
                    self.isShowingPopover = true
                }
                  .padding()
              .cornerRadius(5)
              .border(Color.black, width: 2)
              .popover(isPresented: $isShowingPopover) {
                  BowlliardsScoreView(score: $score1)
              }
            Button(String(score2)) {
                self.isShowingPopover2 = true
            }
              .padding()
              .cornerRadius(5)
              .border(Color.black, width: 2)
              .popover(isPresented: $isShowingPopover2) {
                  BowlliardsScoreView(score: $score2)
              }
        }
          .padding()
    }
}

struct BowlliardsFrame_Previews: PreviewProvider {
    static var previews: some View {
        BowlliardsFrame()
    }
}
