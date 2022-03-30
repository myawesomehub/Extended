//
//  Color.swift
//  
//
//  Created by Mohammad Yasir on 28/03/22.
//

import SwiftUI

public extension Color {
    static func randomColor() -> Color {
        let colors: [Color] = [.red, .yellow, .blue, .green, .orange, .pink, .purple, .gray]
        return colors.randomElement() ?? .clear
    }
}

public extension Color {
    static func hexValue(_ hex: String) -> Color {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        
        Scanner(string: hex).scanHexInt64(&int)
        let alpha, red, green, blue: UInt64
        
        switch hex.count {
        case 3:
            (alpha, red, green, blue) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (alpha, red, green, blue) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (alpha, red, green, blue) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (alpha, red, green, blue) = (1, 1, 1, 0)
        }

        return Color(
            .sRGB,
            red: Double(red) / 255, green: Double(green) / 255, blue:  Double(blue) / 255, opacity: Double(alpha) / 255
        )
    }
}
