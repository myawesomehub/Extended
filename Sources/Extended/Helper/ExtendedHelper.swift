//
//  File.swift
//  
//
//  Created by Mohammad Yasir on 30/03/22.
//

import SwiftUI

public struct ExtendedHelper { }

extension ExtendedHelper {
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
}

extension ExtendedHelper {
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

public extension ExtendedHelper {
    class URLImageViewModel: ObservableObject {
        @Published public var data: Data = .init()
        
        init(urlString:String) {
            guard let url = URL(string: urlString) else { return }
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data else { return }
                DispatchQueue.main.async {
                    self.data = data
                }
            }
            
            task.resume()
        }
    }
}
