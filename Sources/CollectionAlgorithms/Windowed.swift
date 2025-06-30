//
//  Windowed.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Collection {
    /// Returns overlapping subsequences of the given size.
    func windowed(size: Int) -> [[Element]] {
        guard size > 0 && size <= count else { return [] }
        var result: [[Element]] = []
        var index = startIndex
        while let nextIndex = self.index(index, offsetBy: size, limitedBy: endIndex) {
            result.append(Array(self[index..<nextIndex]))
            index = self.index(after: index)
        }
        return result
    }
}
