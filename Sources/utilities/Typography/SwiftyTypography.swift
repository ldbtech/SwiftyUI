//
//  File.swift
//  
//
//  Created by Ali Daho on 5/28/24.
//

import Foundation
import SwiftUI

public struct SwiftyTypography{
    //Define font-sans
    public static func fontSans(_ text: String, _ size: CGFloat)->some View{
        Text(text)
            .font(Font.custom("ui-sans-serif", size: size))
    }
    
    // Define font-serif
    public static func fontSerif(_ text: String, _ size: CGFloat) -> some View {
        Text(text)
            .font(Font.custom("ui-serif", size: size)) // Customize size as needed
    }
    
    // Define font-mono
    public static func fontMono(_ text: String, _ size: CGFloat) -> some View {
        Text(text)
            .font(Font.custom("ui-monospace", size: size)) // Customize size as needed
    }
    
}
