//
//  File.swift
//  
//
//  Created by Ali Daho on 5/29/24.
//
/**
    - App config responsible for pre defining values such as colors, typography and so on that will be used through the app. we Can also have the ability to override some stuff if developer has to.
    - Reason for this file is to make it easy for focus more on backend than frontend. 
 
 */

import Foundation
import SwiftUI

struct AppConfig{
    // Nested struct for Spacing
    struct Spacing{
        static var values: [String: CGFloat] = [
            "1": 8,
            "2": 12,
            "3": 16,
            "4": 24,
            "5": 32,
            "6": 48
        ]
        
        static func value(for key: String) -> CGFloat{
            return values[key] ?? 0
        }
        
        static update(_ key: String, value: CGFloat){
            values[key] = value
        }
        
        static func add(_ key: String, value: CGFloat) {
             values[key] = value
         }
    }
    
    // Example of our Coloring Structs. This can be change and that will change through whole app. you just to change this colors. and whole app will have different one.
    struct Colors{
        // Define color roles for light mode
        static var lightPrimaryShade: String = "_500"
        static var lightSecondaryShade: String = "_700"
        static var lightBackgroundShade: String = "_50"
        static var lightTextShade: String = "_900"
        static var lightSecondaryTextShade: String = "_700"
        
        // Define color roles for dark mode
        static var darkPrimaryShade: String = "_500"
        static var darkSecondaryShade: String = "_300"
        static var darkBackgroundShade: String = "_900"
        static var darkTextShade: String = "_50"
        static var darkSecondaryTextShade: String = "_300"
        
        public static var palette = SwiftyColors.Slate.self // This can be change and everything else will do.
        
        // Configured colors for light mode
        static func lightModeColors() -> SwiftyColors.ConfiguredColor {
            return SwiftyColors.ConfiguredColor(
                primary: color(for: lightPrimaryShade),
                secondary: color(for: lightSecondaryShade),
                background: color(for: lightBackgroundShade),
                text: color(for: lightTextShade),
                secondaryText: color(for: lightSecondaryTextShade)
            )
        }
        
        // Configured colors for dark mode
        static func darkModeColors() -> SwiftyColors.ConfiguredColor {
            return SwiftyColors.ConfiguredColor(
                primary: color(for: darkPrimaryShade),
                secondary: color(for: darkSecondaryShade),
                background: color(for: darkBackgroundShade),
                text: color(for: darkTextShade),
                secondaryText: color(for: darkSecondaryTextShade)
            )
        }
        
        private static func color(for shade: String) -> Color {
            switch shade {
            case "_50": return palette._50
            case "_100": return palette._100
            case "_200": return palette._200
            case "_300": return palette._300
            case "_400": return palette._400
            case "_500": return palette._500
            case "_600": return palette._600
            case "_700": return palette._700
            case "_800": return palette._800
            case "_900": return palette._900
            case "_950": return palette._950
            default: return .clear
            }
        }
    }
    
}
