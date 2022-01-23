//
//  BullseyeHitMeButton.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 20/01/22.
//

import SwiftUI

struct BullseyeHitMeButton: View {
    @State private var alertIsVisible: Bool = false
    
    var selectedValue: Double
    @Binding var game: Game
    
    var body: some View {
        BullseyeButton(buttonText: "Hit Me") {
            alertIsVisible = true
        }
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
        .alert(
            "Hello there",
            isPresented: $alertIsVisible,
            presenting: {
                let roundedValue = Int(selectedValue.rounded())
                let gamePoints = game.points(sliderValue: roundedValue)
                return (
                    roundedValue, gamePoints
                )
            } () as (sliderValue: Int, gamePoints: Int)
        ) { data in
            Button("Awesome!") {
                //
            }
        } message: { data in
            Text("The slider's value is \(data.sliderValue).\n" + "Your scored \(data.gamePoints) points this round.")
        }
    }
}

struct BullseyeHitMeButton_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeHitMeButton(selectedValue: 50.0, game: .constant(Game()))
        BullseyeHitMeButton(selectedValue: 50.0, game: .constant(Game()))
            .preferredColorScheme(.dark)
    }
}
