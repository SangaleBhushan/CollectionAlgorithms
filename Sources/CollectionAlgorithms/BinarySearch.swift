//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension RandomAccessCollection where Element: Comparable {
    /// Returns the index of the target value using binary search, or nil if not found.
    func binarySearch(for value: Element) -> Index? {
        var low = startIndex
        var high = index(before: endIndex)

        while low <= high {
            let mid = index(low, offsetBy: distance(from: low, to: high) / 2)
            if self[mid] == value {
                return mid
            } else if self[mid] < value {
                low = index(after: mid)
            } else {
                high = index(before: mid)
            }
        }
        return nil
    }
}
