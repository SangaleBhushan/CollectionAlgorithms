//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
import Foundation

public extension Collection where Element: BinaryInteger {
    func average() -> Double? {
        guard !isEmpty else { return nil }
        let total = self.reduce(0, +)
        return Double(total) / Double(count)
    }
}

public extension Collection where Element: BinaryFloatingPoint {
    func average() -> Element? {
        guard !isEmpty else { return nil }
        let total = self.reduce(0, +)
        return total / Element(count)
    }
}

