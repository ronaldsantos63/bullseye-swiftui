//
//  BullseyeRoundedImageViewFilled.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 23/01/22.
//

import SwiftUI

struct BullseyeRoundedImageViewFilled: View {
    private enum Strings {
        static let buttonFilledBackgroundColorName = "ButtonFilledBackgroundColor"
        static let buttonFilledTextColorName = "ButtonFilledTextColor"
        static let buttonStrokeColorName = "ButtonStrokeColor"
    }
    
    var systemName: String
    
    var body: some View {
        ZStack {
            BullseyeImageView(systemName: systemName)
                .foregroundColor(Color(Strings.buttonFilledTextColorName))
                .background(
                    Circle()
                        .fill(Color(Strings.buttonFilledBackgroundColorName))
                )
        }
    }
}

struct BullseyeRoundedImageViewFilled_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeRoundedImageViewFilled(systemName: "arrow.counterclockwise")
        BullseyeRoundedImageViewFilled(systemName: "list.dash")
            .preferredColorScheme(.dark)
    }
}
