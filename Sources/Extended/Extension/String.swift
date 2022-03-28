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
