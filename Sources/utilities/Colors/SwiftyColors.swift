//
//  File 2.swift
//  
//
//  Created by Ali Daho on 5/27/24.
//

import SwiftUI

public struct SwiftyColors {
    
    public struct Slate {
        public static let _50 = Color(hex: "#f8fafc")
        public static let _100 = Color(hex: "#f1f5f9")
        public static let _200 = Color(hex: "#e2e8f0")
        public static let _300 = Color(hex: "#cbd5e1")
        public static let _400 = Color(hex: "#94a3b8")
        public static let _500 = Color(hex: "#64748b")
        public static let _600 = Color(hex: "#475569")
        public static let _700 = Color(hex: "#334155")
        public static let _800 = Color(hex: "#1e293b")
        public static let _900 = Color(hex: "#0f172a")
        public static let _950 = Color(hex: "#020617")
    }
    
    public struct Gray {
        public static let _50 = Color(hex: "#f9fafb")
        public static let _100 = Color(hex: "#f3f4f6")
        public static let _200 = Color(hex: "#e5e7eb")
        public static let _300 = Color(hex: "#d1d5db")
        public static let _400 = Color(hex: "#9ca3af")
        public static let _500 = Color(hex: "#6b7280")
        public static let _600 = Color(hex: "#4b5563")
        public static let _700 = Color(hex: "#374151")
        public static let _800 = Color(hex: "#1f2937")
        public static let _900 = Color(hex: "#111827")
        public static let _950 = Color(hex: "#030712")
    }
    
    public struct Zinc {
        public static let _50 = Color(hex: "#fafafa")
        public static let _100 = Color(hex: "#f4f4f5")
        public static let _200 = Color(hex: "#e4e4e7")
        public static let _300 = Color(hex: "#d4d4d8")
        public static let _400 = Color(hex: "#a1a1aa")
        public static let _500 = Color(hex: "#71717a")
        public static let _600 = Color(hex: "#52525b")
        public static let _700 = Color(hex: "#3f3f46")
        public static let _800 = Color(hex: "#27272a")
        public static let _900 = Color(hex: "#18181b")
        public static let _950 = Color(hex: "#09090b")
    }
    
    public struct Neutral {
        public static let _50 = Color(hex: "#fafafa")
        public static let _100 = Color(hex: "#f5f5f5")
        public static let _200 = Color(hex: "#e5e5e5")
        public static let _300 = Color(hex: "#d4d4d4")
        public static let _400 = Color(hex: "#a3a3a3")
        public static let _500 = Color(hex: "#737373")
        public static let _600 = Color(hex: "#525252")
        public static let _700 = Color(hex: "#404040")
        public static let _800 = Color(hex: "#262626")
        public static let _900 = Color(hex: "#171717")
        public static let _950 = Color(hex: "#0a0a0a")
    }
    
    public struct Stone {
        public static let _50 = Color(hex: "#fafaf9")
        public static let _100 = Color(hex: "#f5f5f4")
        public static let _200 = Color(hex: "#e7e5e4")
        public static let _300 = Color(hex: "#d6d3d1")
        public static let _400 = Color(hex: "#a8a29e")
        public static let _500 = Color(hex: "#78716c")
        public static let _600 = Color(hex: "#57534e")
        public static let _700 = Color(hex: "#44403c")
        public static let _800 = Color(hex: "#292524")
        public static let _900 = Color(hex: "#1c1917")
        public static let _950 = Color(hex: "#0c0a09")
    }
    
    public struct Red {
        public static let _50 = Color(hex: "#fef2f2")
        public static let _100 = Color(hex: "#fee2e2")
        public static let _200 = Color(hex: "#fecaca")
        public static let _300 = Color(hex: "#fca5a5")
        public static let _400 = Color(hex: "#f87171")
        public static let _500 = Color(hex: "#ef4444")
        public static let _600 = Color(hex: "#dc2626")
        public static let _700 = Color(hex: "#b91c1c")
        public static let _800 = Color(hex: "#991b1b")
        public static let _900 = Color(hex: "#7f1d1d")
        public static let _950 = Color(hex: "#450a0a")
    }
    
    public struct Orange {
        public static let _50 = Color(hex: "#fff7ed")
        public static let _100 = Color(hex: "#ffedd5")
        public static let _200 = Color(hex: "#fed7aa")
        public static let _300 = Color(hex: "#fdba74")
        public static let _400 = Color(hex: "#fb923c")
        public static let _500 = Color(hex: "#f97316")
        public static let _600 = Color(hex: "#ea580c")
        public static let _700 = Color(hex: "#c2410c")
        public static let _800 = Color(hex: "#9a3412")
        public static let _900 = Color(hex: "#7c2d12")
        public static let _950 = Color(hex: "#431407")
    }
    
    public struct Amber {
        public static let _50 = Color(hex: "#fffbeb")
        public static let _100 = Color(hex: "#fef3c7")
        public static let _200 = Color(hex: "#fde68a")
        public static let _300 = Color(hex: "#fcd34d")
        public static let _400 = Color(hex: "#fbbf24")
        public static let _500 = Color(hex: "#f59e0b")
        public static let _600 = Color(hex: "#d97706")
        public static let _700 = Color(hex: "#b45309")
        public static let _800 = Color(hex: "#92400e")
        public static let _900 = Color(hex: "#78350f")
        public static let _950 = Color(hex: "#451a03")
    }
    
    public struct Yellow {
        public static let _50 = Color(hex: "#fefce8")
        public static let _100 = Color(hex: "#fef9c3")
        public static let _200 = Color(hex: "#fef08a")
        public static let _300 = Color(hex: "#fde047")
        public static let _400 = Color(hex: "#facc15")
        public static let _500 = Color(hex: "#eab308")
        public static let _600 = Color(hex: "#ca8a04")
        public static let _700 = Color(hex: "#a16207")
        public static let _800 = Color(hex: "#854d0e")
        public static let _900 = Color(hex: "#713f12")
        public static let _950 = Color(hex: "#451a03")
    }

    // Add more color definitions as needed
    

}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
