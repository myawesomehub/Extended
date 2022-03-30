//
//  Optional.swift
//  
//
//  Created by Mohammad Yasir on 30/03/22.
//

import SwiftUI

public extension Optional {
    func safely(action: (Wrapped) -> Void) -> Void {
        if let safeValue = self {
            action(safeValue)
        }
    }
}
