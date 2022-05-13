//
//  Int.swift
//  
//
//  Created by Mohammad Yasir on 31/03/22.
//

import SwiftUI

public extension Int {
    var squared: Int { self * self }
}

static func diffOfDays(from: Date, to: Date) -> Int {
    let numOfDays = Calendar.current.dateComponents([.day], from: from, to: to)
    return numOfDays.day!
}
