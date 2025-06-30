//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension Collection {
    /// Returns a random sample of `count` elements.
    func sample(count: Int) -> [Element] {
        guard count > 0, !isEmpty else { return [] }
        return Array(shuffled().prefix(count))
    }
}
