// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public extension Collection {
    /// Splits the collection into chunks of a given size.
    func chunked(into size: Int) -> [[Element]] {
        guard size > 0 else { return [] }
        var result: [[Element]] = []
        var index = startIndex
        while index != endIndex {
            let nextIndex = self.index(index, offsetBy: size, limitedBy: endIndex) ?? endIndex
            result.append(Array(self[index..<nextIndex]))
            index = nextIndex
        }
        return result
    }
}

