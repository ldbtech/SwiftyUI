//
//  SwiftUIView.swift
//  
//
//  Created by Ali Daho on 5/27/24.
//

import SwiftUI

public struct TailwindColorsView: View {
    public init() {}
    
    public var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Group {
                    ColorSampleView(color: SwiftyColors.Amber._50, colorName: "Slate 50")
                    ColorSampleView(color: SwiftyColors.Slate._100, colorName: "Slate 100")
                    ColorSampleView(color: SwiftyColors.Slate._200, colorName: "Slate 200")
                    ColorSampleView(color: SwiftyColors.Slate._300, colorName: "Slate 300")
                    ColorSampleView(color: SwiftyColors.Slate._400, colorName: "Slate 400")
                    ColorSampleView(color: SwiftyColors.Slate._500, colorName: "Slate 500")
                    ColorSampleView(color: SwiftyColors.Slate._600, colorName: "Slate 600")
                    ColorSampleView(color: SwiftyColors.Slate._700, colorName: "Slate 700")
                    ColorSampleView(color: SwiftyColors.Slate._800, colorName: "Slate 800")
                    ColorSampleView(color: SwiftyColors.Slate._900, colorName: "Slate 900")
                    ColorSampleView(color: SwiftyColors.Slate._950, colorName: "Slate 950")
                }
                // Add other color groups similarly...
            }
            .padding()
        }
    }
}

struct ColorSampleView: View {
    var color: Color
    var colorName: String

    var body: some View {
        HStack {
            Rectangle()
                .fill(color)
                .frame(width: 50, height: 50)
                .cornerRadius(8)
            Text(colorName)
                .foregroundColor(.primary)
                .padding(.leading, 10)
            Spacer()
        }
        .padding(.horizontal)
    }
}
