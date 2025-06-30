//
//  Grouped.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Sequence {
    /// Groups elements into a dictionary based on the given key.
    func grouped<Key: Hashable>(by keyForValue: (Element) -> Key) -> [Key: [Element]] {
        Dictionary(grouping: self, by: keyForValue)
    }
}
