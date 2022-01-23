//
//  BullseyeRoundRectTextView.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 23/01/22.
//

import SwiftUI

struct BullseyeRoundRectTextView: View {
    private enum Strings {
        static let textColorName = "TextColor"
        static let buttonStrokeColorName = "ButtonStrokeColor"
    }
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color(Strings.textColorName))
            .frame(width: 68.0, height: 56.0)
            .overlay(
                RoundedRectangle(cornerRadius: 21.0)
                    .strokeBorder(Color(Strings.buttonStrokeColorName), lineWidth: 2.0)
            )
    }
}

struct BullseyeRoundRectTextView_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeRoundRectTextView(text: "999")
        BullseyeRoundRectTextView(text: "999")
            .preferredColorScheme(.dark)
    }
}
