//
//  BullseyeBigText.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 20/01/22.
//
import SwiftUI

struct BullseyeBigText: View {
    private let textColorName = "TextColor"
    
    var text: String
    
    var body: some View {
        Text(String(text))
            .kerning(-1.0)
            .fontWeight(.black)
            .font(.largeTitle)
            .foregroundColor(Color(textColorName))
    }
}

struct BullSeyeBigText_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeBigText(text: "999")
        BullseyeBigText(text: "999")
            .preferredColorScheme(.dark)
    }
}
