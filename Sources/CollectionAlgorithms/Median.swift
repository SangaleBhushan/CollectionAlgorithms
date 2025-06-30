//
//  Median.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Collection where Element: BinaryInteger {
    func median() -> Double? {
        guard !isEmpty else { return nil }
        let sorted = self.sorted()
        let mid = count / 2
        if count % 2 == 0 {
            let lower = Double(sorted[mid - 1])
            let upper = Double(sorted[mid])
            return (lower + upper) / 2
        } else {
            return Double(sorted[mid])
        }
    }
}

public extension Collection where Element: BinaryFloatingPoint {
    func median() -> Element? {
        guard !isEmpty else { return nil }
        let sorted = self.sorted()
        let mid = count / 2
        if count % 2 == 0 {
            let lower = sorted[mid - 1]
            let upper = sorted[mid]
            return (lower + upper) / 2
        } else {
            return sorted[mid]
        }
    }
}

