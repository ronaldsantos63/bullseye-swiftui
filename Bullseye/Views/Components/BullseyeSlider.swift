//
//  BullseyeSlider.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 20/01/22.
//

import SwiftUI

struct BullseyeSlider: View {
    private let textColorName = "TextColor"
    
    var minValue = 1.0
    var maxValue = 100.0
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text(String(Int(minValue)))
                .bold()
                .foregroundColor(Color(textColorName))
            Slider(value: $sliderValue, in: minValue...maxValue)
            Text(String(Int(maxValue)))
                .bold()
                .foregroundColor(Color(textColorName))
        }
    }
}

struct BullseyeSlider_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeSlider(sliderValue: .constant(50.0))
        BullseyeSlider(sliderValue: .constant(50.0))
            .preferredColorScheme(.dark)
    }
}
