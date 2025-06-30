//
//  Partitioned.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 24/06/25.
//

import Foundation

public extension Sequence {
    /// Splits elements into two arrays based on a predicate.
    func partitioned(by belongsInFirstPartition: (Element) -> Bool) -> (matching: [Element], nonMatching: [Element]) {
        var matching: [Element] = []
        var nonMatching: [Element] = []
        for element in self {
            if belongsInFirstPartition(element) {
                matching.append(element)
            } else {
                nonMatching.append(element)
            }
        }
        return (matching, nonMatching)
    }
}
