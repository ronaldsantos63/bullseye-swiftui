//
//  BullseyeLabelText.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 23/01/22.
//

import SwiftUI

struct BullseyeLabelText: View {
    private enum Strings {
        static let textColorName = "TextColor"
    }
    
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(1.5)
            .font(.caption)
            .bold()
            .foregroundColor(Color(Strings.textColorName))
    }
}

struct BullseyeLabelText_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeLabelText(text: "Score")
        BullseyeLabelText(text: "Score")
            .preferredColorScheme(.dark)
    }
}
