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
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                        .bold()
                        .kerning(2.0) // Sets the spacing between words
                        .multilineTextAlignment(.center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                    Text(String(game.target))
                        .kerning(-1.0)
                        .fontWeight(.black)
                        .font(.largeTitle)
                }
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .bold()
                }
            }
            Button("Hit me") {
                self.alertIsVisible = true
            }
            .alert(
                "Hello there",
                isPresented: $alertIsVisible,
                presenting: {
                    let roundedValue = Int(sliderValue.rounded())
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
