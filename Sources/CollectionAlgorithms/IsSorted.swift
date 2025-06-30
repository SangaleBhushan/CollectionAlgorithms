//
//  IsSorted.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Collection where Element: Comparable {
    /// Returns true if the collection is sorted in ascending order.
    var isSorted: Bool {
        zip(self, dropFirst()).allSatisfy { $0 <= $1 }
    }
}
