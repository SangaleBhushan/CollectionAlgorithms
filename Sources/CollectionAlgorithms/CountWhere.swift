//
//  CountWhere.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Sequence {
    /// Counts how many elements satisfy the given condition.
    func count(where predicate: (Element) -> Bool) -> Int {
        reduce(0) { $0 + (predicate($1) ? 1 : 0) }
    }
}
