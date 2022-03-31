//
//  Calendar.swift
//  
//
//  Created by Mohammad Yasir on 31/03/22.
//

import SwiftUI

public extension Calendar {
    static func isSameDay(dayOne: Date, dayTwo: Date) -> Bool {
        let order = Calendar.current.compare(this, to: with, toGranularity: .day)
        
        switch order {
        case .orderedAscending:
            return false
        case .orderedDescending:
            return false
        case .orderedSame:
            return true
        }
    }
}
