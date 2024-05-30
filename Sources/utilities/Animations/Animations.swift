//
//  File.swift
//  
//
//  Created by Ali Daho on 5/30/24.
//

import Foundation
import SwiftUI

public struct Animations{
    public static let fadeIn = Animation.easeIn(duration: 0.3)
    public static let fadeOut = Animation.easeOut(duration: 0.3)
    public static let fadeInOut = Animation.easeInOut(duration: 0.3)
    
    public static let slideIn = Animation.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.5)
    public static let slideOut = Animation.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.5)
    
    public static let bounce = Animation.interpolatingSpring(stiffness: 50, damping: 1)
    public static let slowBounce = Animation.interpolatingSpring(stiffness: 20, damping: 2)
    
    public static let spin = Animation.linear(duration: 1).repeatForever(autoreverses: false)

}

extension View {
    func applyAnimation(_ animation: Animation, value: Bool) -> some View {
        self.animation(animation, value: value)
    }
    
    func fadeIn(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.fadeIn, value: value)
    }
    
    func fadeOut(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.fadeOut, value: value)
    }
    
    func fadeInOut(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.fadeInOut, value: value)
    }
    
    func slideIn(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.slideIn, value: value)
    }
    
    func slideOut(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.slideOut, value: value)
    }
    
    func bounce(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.bounce, value: value)
    }
    
    func slowBounce(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.slowBounce, value: value)
    }
    
    func spin(value: Bool) -> some View {
        self.applyAnimation(SwiftyAnimations.spin, value: value)
    }
    
    // Add more animation functions as needed
}

