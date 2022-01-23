//
//  BullseyeInstructionText.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 20/01/22.
//

import SwiftUI

struct BullseyeInstructionText: View {
    private let textColorName = "TextColor"
    
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2.0) // Sets the spacing between words
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color(textColorName))
    }
}

struct BullseyeInstructionText_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeInstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
    }
}
