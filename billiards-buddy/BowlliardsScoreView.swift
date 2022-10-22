//
//  BowlliardsScoreView.swift
//  billiards-buddy
//
//  Created by Gonzo Guajardo on 7/24/22.
//

import SwiftUI

struct BowlliardsScoreView: View {

    @Binding var score: String

    var body: some View {
        VStack {
            HStack {
                ForEach(0..<5) { forNumber in
                    BowlliardsScoreButton(score: String(forNumber), selectedScore: $score)
                }
            }
            HStack {
                ForEach(5..<10) { forNumber in
                    BowlliardsScoreButton(score: String(forNumber), selectedScore: $score)
                }
            }
            HStack {
                BowlliardsScoreButton(score: "-", selectedScore: $score)
                BowlliardsScoreButton(score: "/", selectedScore: $score)
                BowlliardsScoreButton(score: "X", selectedScore: $score)
            }
        }
    }
}

struct BowlliardsScoreButton: View {
    let score: String
    @Binding var selectedScore: String
    var body: some View {
        Button(action: {
            selectedScore = score
        }, label: {
            Text(score)
        })
            .padding()
            .cornerRadius(5)
            .border(Color.black, width: 2)
            .if(score == selectedScore) { view in
                view.background(Color.green)
            }
    }
}

extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
