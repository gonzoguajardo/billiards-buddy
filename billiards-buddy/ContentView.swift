//
//  ContentView.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 7/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        BowlliardsFrame()
        Text("some other text")
          .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
