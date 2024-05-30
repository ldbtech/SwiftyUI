//
//  SwiftUIView.swift
//  
//
//  Created by Ali Daho on 5/27/24.
//

import SwiftUI
public struct TailwindColorsView: View {
    public init() {}
    @Environment(\.ColorScheme) var colorScheme
    
    public var body: some View {
        let colors = (colorScheme == .dark) ? AppConfig.Colors.darkModeColors() : AppConfig.Colors.lightModeColors()
        return VStack {
            Text("Primary Color")
                .padding()
                .background(colors.primary)
                .foregroundColor(colors.text)
            Text("Secondary Color")
                .padding()
                .background(colors.secondary)
                .foregroundColor(colors.secondaryText)
            Text("Background Color")
                .padding()
                .background(colors.background)
                .foregroundColor(colors.text)
        }
        .background(colors.background)
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
