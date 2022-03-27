import SwiftUI

public struct Extended {
    public private(set) var text = "Hello, World!"

    public init() {
    }
}

public extension String {
    static func getGreet() -> String {
        return "Hey There"
    }
}
