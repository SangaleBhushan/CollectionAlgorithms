//
//  Mode.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Sequence where Element: Hashable {
    /// Returns the most frequent element(s).
    func mode() -> [Element] {
        var counts: [Element: Int] = [:]
        forEach { counts[$0, default: 0] += 1 }
        let maxCount = counts.values.max() ?? 0
        return counts.filter { $0.value == maxCount }.map { $0.key }
    }
}
