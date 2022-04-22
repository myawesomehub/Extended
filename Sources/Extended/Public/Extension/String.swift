//
//  String.swift
//  
//
//  Created by Mohammad Yasir on 28/03/22.
//

import SwiftUI

public extension String {
    static func randomWord() -> String {
        let strings: [String] = ["Lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit"]
        return strings.randomElement() ?? "empty"
    }
}

public extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

public extension String {
    static func dateFormattedAs(style: ExtendedHelper.DateFormatterStyles, for date: Date) -> String {
        let formatter = DateFormatter()
        
        switch style {
        case .date(let dateStyle):
            switch dateStyle {
            case .short:
                formatter.dateFormat = "d/M/yy"
            case .medium:
                formatter.dateFormat = "MMM d, yyyy"
            case .long:
                formatter.dateFormat = "MMMM d, yyyy"
            case .full:
                formatter.dateFormat = "EEEE, MMMM d, yyyy"
            case .half:
                return ExtendedHelper.ordinalConverter(date: date, formatter: "MMM, yyyy")
            case .close:
                return ExtendedHelper.ordinalConverter(date: date, formatter: "MMM")
            }
        case .time(let timeStyle):
            switch timeStyle {
            case .short:
                formatter.timeStyle = .short
            case .medium:
                formatter.timeStyle = .medium
            case .long:
                formatter.timeStyle = .long
            case .full:
                formatter.timeStyle = .full
            }
        case .dateTime(let dateTimeStyle):
            switch dateTimeStyle {
            case .short:
                formatter.dateFormat = "dd MMM, yyyy - hh:mm:ss"
            }
        }
        
        return formatter.string(from: date)

    }
}


public extension String {
    func isValidEmail() -> Bool {
        let emailRegEx = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" +
        "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" +
        "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" +
        "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" +
        "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" +
        "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" +
        "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
