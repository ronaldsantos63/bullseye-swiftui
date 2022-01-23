//
//  BackgroundHomeView.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 23/01/22.
//

import SwiftUI

struct BackgroundHomeView: View {
    private enum Strings {
        static let backgroundColorName = "BackgroundColor"
        static let textColorName = "TextColor"
    }
    
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(
            Color(Strings.backgroundColorName)
                .edgesIgnoringSafeArea(.all)
        )
    }
}

@ViewBuilder
func TopView(game: Binding<Game>) -> some View {
    HStack {
        BullseyeRoundedImageViewStroked(systemName: "arrow.counterclockwise")
        Spacer()
        BullseyeRoundedImageViewFilled(systemName: "list.dash")
    }
}

@ViewBuilder
func NumberView(title: String, text: String) -> some View {
    VStack(spacing: 5) {
        BullseyeLabelText(text: title)
        BullseyeRoundRectTextView(text: text)
    }
}


struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Round", text: String(game.round))
        }
    }
}

struct BackgroundHomeView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundHomeView(game: .constant(Game()))
        BackgroundHomeView(game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}
