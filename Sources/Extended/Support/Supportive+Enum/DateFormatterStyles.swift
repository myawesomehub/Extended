//
//  DateFormatterStyles.swift
//  
//
//  Created by Mohammad Yasir on 28/03/22.
//

import SwiftUI

internal enum DateFormatterStyles {
    case date(DateStyle)
    case time(TimeStyle)
    case dateTime(DateTimeStyle)
    
    internal enum DateStyle {
        case short
        case medium
        case long
        case full
        case half
        case close
    }
    
    internal enum TimeStyle {
        case short
        case medium
        case long
        case full
    }
    
    internal enum DateTimeStyle {
        case short
    }
}
