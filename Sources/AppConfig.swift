//
//  File.swift
//  
//
//  Created by Ali Daho on 5/29/24.
//

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
    
    // Nested Struct For Colours
    struct Colours{
        static var values: [String: Color] = [
            "primary": Color(UIColor.systemBlue),
            "secondary": Color(UIColor.systemGreen),
            "background": Color(UIColor.systemBackground),
            "text": Color(UIColor.label),
            "secondaryText": Color(UIColor.secondaryLabel),
            "tertiaryText": Color(UIColor.tertiaryLabel),
            "quaternaryText": Color(UIColor.quaternaryLabel),
            "placeholderText": Color(UIColor.placeholderText),
            "link": Color(UIColor.link),
            "separator": Color(UIColor.separator),
            "opaqueSeparator": Color(UIColor.opaqueSeparator),
            "systemFill": Color(UIColor.systemFill),
            "secondarySystemFill": Color(UIColor.secondarySystemFill),
            "tertiarySystemFill": Color(UIColor.tertiarySystemFill),
            "quaternarySystemFill": Color(UIColor.quaternarySystemFill)
        ]
        
        static func value(for key: String) -> Color {
            return values[key] ?? .clear
        }
        
        static func update(_ key: String, value: Color) {
            values[key] = value
        }
        
        static func add(_ key: String, value: Color) {
            values[key] = value
        }
    }
    
}
