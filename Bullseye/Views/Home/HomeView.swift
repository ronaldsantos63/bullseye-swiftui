//
//  ContentView.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 16/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    private enum Strings {
        static let backgroundColorName = "BackgroundColor"
        static let textColorName = "TextColor"
    }
    
    var body: some View {
        ZStack {
            BackgroundHomeView(game: $game)
            VStack {
                InstructionsView(target: String(game.target))
                BullseyeSlider(sliderValue: $sliderValue).padding()
                BullseyeHitMeButton(selectedValue: sliderValue, game: $game)
            }
        }
    }
}

struct InstructionsView: View {
    var target: String
    
    var body: some View {
        VStack {
            BullseyeInstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            BullseyeBigText(text: target)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
    }
}
