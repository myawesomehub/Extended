//
//  DateFormatterStyles.swift
//  
//
//  Created by Mohammad Yasir on 28/03/22.
//

import SwiftUI

public enum DateFormatterStyles {
    case date(DateStyle)
    case time(TimeStyle)
    case dateTime(DateTimeStyle)
    
    public enum DateStyle {
        case short
        case medium
        case long
        case full
        case half
        case close
    }
    
    public enum TimeStyle {
        case short
        case medium
        case long
        case full
    }
    
    public enum DateTimeStyle {
        case short
    }
}
