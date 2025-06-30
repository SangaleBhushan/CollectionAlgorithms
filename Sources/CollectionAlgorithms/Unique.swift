//
//  Unique.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Sequence where Element: Hashable {
    /// Returns an array with duplicates removed, preserving order.
    func unique() -> [Element] {
        var seen = Set<Element>()
        return filter { seen.insert($0).inserted }
    }
}
