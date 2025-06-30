//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension Collection {
    /// Generates all permutations of the collection.
    func permutations() -> [[Element]] {
        guard count > 0 else { return [[]] }

        return indices.flatMap { i -> [[Element]] in
            var rest = Array(self)
            let head = rest.remove(at: i as! Int)
            return rest.permutations().map { [head] + $0 }
        }
    }
}
