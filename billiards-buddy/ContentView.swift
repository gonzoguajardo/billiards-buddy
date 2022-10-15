//
//  ContentView.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 7/23/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var game = BowlliardsGame()
    var body: some View {
        ScrollView {
            ForEach(game.frames, id: \.self) { frame in
                BowlliardsFrameView(bowlliardsFrame: frame)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
