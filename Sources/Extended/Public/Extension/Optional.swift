//
//  Optional.swift
//  
//
//  Created by Mohammad Yasir on 30/03/22.
//

import SwiftUI

public extension Optional {
    func unwrapped(
        _ found: (Wrapped) -> Void,
        noData whenNil: () -> Void
    ) -> Void {
        if let safeData = self {
            found(safeData)
        } else {
            whenNil()
        }
    }
}
