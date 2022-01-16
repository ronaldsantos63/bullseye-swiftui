//
//  ContentView.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 16/01/22.
//

import SwiftUI

struct ContentView: View {
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
                    Text("89")
                        .kerning(-1.0)
                        .fontWeight(.black)
                        .font(.largeTitle)
                }
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: .constant(50), in: 1.0...100.0)
                    Text("100")
                        .bold()
                }
            }
            Button(action: {
                print("Hello, SwiftUI!")
            }) {
                Text("Hit me")
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
