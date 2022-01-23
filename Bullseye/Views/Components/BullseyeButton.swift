//
//  BullseyeButton.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 19/01/22.
//

import SwiftUI

struct BullseyeButton: View {
    var buttonText: String
    var action: () -> Void = {}
    
    private enum Strings {
        static let backgroundColorName = "BackgroundColorBullseyeButton"
    }
    
    var body: some View {
        Button(action: self.action) {
            Text(buttonText.uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(
            ZStack {
                Color(Strings.backgroundColorName)
                LinearGradient(
                    gradient: Gradient(colors: [.white.opacity(0.3), .clear]), startPoint: .top, endPoint: .bottom
                )
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
    }
}

struct BullseyeButton_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeButton(buttonText: "Hit me")
        BullseyeButton(buttonText: "Hit me")
            .preferredColorScheme(.dark)
    }
}
