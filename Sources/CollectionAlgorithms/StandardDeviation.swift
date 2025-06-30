//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
import Foundation

public extension Collection where Element: BinaryFloatingPoint {
    func standardDeviation() -> Element? {
        guard !isEmpty else { return nil }
        let avg = self.reduce(0, +) / Element(count)
        let variance = self.map { ($0 - avg) * ($0 - avg) }.reduce(0, +) / Element(count)
        return sqrt(variance)
    }
}

public extension Collection where Element: BinaryInteger {
    func standardDeviation() -> Double? {
        guard !isEmpty else { return nil }
        let avg = Double(self.reduce(0, +)) / Double(count)
        let variance = self.map { Double($0) - avg }.map { $0 * $0 }.reduce(0, +) / Double(count)
        return sqrt(variance)
    }
}
