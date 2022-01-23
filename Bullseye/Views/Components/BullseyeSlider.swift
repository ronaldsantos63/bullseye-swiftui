//
//  BullseyeSlider.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 20/01/22.
//

import SwiftUI

struct BullseyeSlider: View {
    var minValue = 1.0
    var maxValue = 100.0
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelText(text: String(Int(minValue)))
            Slider(value: $sliderValue, in: minValue...maxValue)
            SliderLabelText(text: String(Int(maxValue)))
        }
    }
}

struct SliderLabelText: View {
    private let textColorName = "TextColor"
    
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color(textColorName))
            .frame(width: 35.0)
    }
}

struct BullseyeSlider_Previews: PreviewProvider {
    static var previews: some View {
        BullseyeSlider(sliderValue: .constant(50.0))
        BullseyeSlider(sliderValue: .constant(50.0))
            .preferredColorScheme(.dark)
    }
}
