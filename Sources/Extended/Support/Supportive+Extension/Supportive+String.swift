//
//  Supportive+String.swift
//  
//
//  Created by Mohammad Yasir on 28/03/22.
//

import SwiftUI

public extension String {
    static func ordinalConverter(date : Date, formatter: String) -> String {
        let calendar = Calendar.current
        let anchorComponents = calendar.dateComponents([.day, .month, .year], from: date)

        let dateFormate = DateFormatter()
        dateFormate.dateFormat = formatter
        let newDate = dateFormate.string(from: date)

        var day  = "\(anchorComponents.day!)"
        switch (day) {
        case "1" , "21" , "31":
            day.append("st")
        case "2" , "22":
            day.append("nd")
        case "3" ,"23":
            day.append("rd")
        default:
            day.append("th")
        }
        return day + " " + newDate
    }
}
