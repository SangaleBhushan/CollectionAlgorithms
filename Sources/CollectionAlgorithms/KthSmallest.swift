//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension Collection where Element: Comparable {
    /// Returns the k-th smallest element (1-based indexing)
    func kthSmallest(_ k: Int) -> Element? {
        guard k > 0 && k <= count else { return nil }
        let sorted = self.sorted()
        return sorted[k - 1]
    }
}
