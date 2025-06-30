//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension RandomAccessCollection where Element: Comparable & SignedNumeric {
    func binarySearchClosest(to value: Element) -> Element? {
        guard !isEmpty else { return nil }

        var low = startIndex
        var high = index(before: endIndex)

        while low <= high {
            let mid = index(low, offsetBy: distance(from: low, to: high) / 2)
            let midValue = self[mid]

            if midValue == value {
                return midValue
            } else if midValue < value {
                low = index(after: mid)
            } else {
                high = index(before: mid)
            }
        }

        var candidates: [Element] = []
        if low < endIndex { candidates.append(self[low]) }
        if high >= startIndex { candidates.append(self[high]) }

        return candidates.min(by: {
            abs($0 - value) < abs($1 - value)
        })
    }
}
