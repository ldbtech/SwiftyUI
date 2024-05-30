//
//  SwiftUIView 2.swift
//  
//
//  Created by Ali Daho on 5/29/24.
//

import SwiftUI

struct ConfigurationManager{
    static let shared = ConfigurationManager()
    private init(){
        
    }
    
    func spacing(for key: String) -> CGFloat{
        return AppConfig.spacing(for: key)
    }
    
    for colour(for key: String) -> Color{
        return AppConfig.color(for: key)
    }
    
    func updateSpacing(_ key: String, value: CGFloat) {
         AppConfig.Spacing.update(key, value: value)
     }
     
     func updateColor(_ key: String, value: Color) {
         AppConfig.Colours.update(key, value: value)
     }
}
