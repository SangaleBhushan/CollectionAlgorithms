//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension Array {
    /// Rotates the array in-place by `k` positions (positive = right, negative = left)
    mutating func rotate(by k: Int) {
        let count = self.count
        guard count > 1 else { return }
        let offset = ((k % count) + count) % count
        self = Array(self[count - offset ..< count] + self[0 ..< count - offset])
    }
}
