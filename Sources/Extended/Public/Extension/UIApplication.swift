//
//  File.swift
//  
//
//  Created by Ozgun SIMSEK on 23.05.2022.
//

import Foundation
import UIKit

public extension UIApplication {
    static var appVersion: String? {
        return Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    }
}
