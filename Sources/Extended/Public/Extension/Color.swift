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
