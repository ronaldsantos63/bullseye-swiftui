//
//  BullseyeImageView.swift
//  Bullseye
//
//  Created by Ronald Ferreira Dos Santos on 23/01/22.
//

import SwiftUI

struct BullseyeImageView: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title2)
            .frame(width: 56.0, height: 56.0)
    }
}

struct BullseyeImageView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            BullseyeImageView(systemName: "arrow.counterclockwise")
            BullseyeImageView(systemName: "list.dash")
        }
        VStack(spacing: 10) {
            BullseyeImageView(systemName: "arrow.counterclockwise")
                .preferredColorScheme(.dark)
            BullseyeImageView(systemName: "list.dash")
                .preferredColorScheme(.dark)
        }
    }
}
