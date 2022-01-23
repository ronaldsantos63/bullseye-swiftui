//
//  BullseyeRoundedImageView.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 23/01/22.
//

import SwiftUI

struct BullseyeRoundedImageViewStroked: View {
    private enum Strings {
        static let textColorName = "TextColor"
        static let buttonStrokeColorName = "ButtonStrokeColor"
    }
    
    var systemName: String
    
    var body: some View {
        BullseyeImageView(systemName: systemName)
            .overlay(
                Circle()
                    .strokeBorder(Color(Strings.buttonStrokeColorName), lineWidth: 2.0)
                    .frame(width: 56.0, height: 56.0)
            )
        
    }
}

struct BullseyeRoundedImageViewStroked_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeRoundedImageViewStroked(systemName: "arrow.counterclockwise")
        BullseyeRoundedImageViewStroked(systemName: "arrow.counterclockwise")
            .preferredColorScheme(.dark)
    }
}
