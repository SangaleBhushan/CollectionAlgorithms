//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension RandomAccessCollection where Element: Comparable {
    /// First index where element is ≥ value
    func lowerBound(of value: Element) -> Index? {
        var low = startIndex
        var high = endIndex
        while low < high {
            let mid = index(low, offsetBy: distance(from: low, to: high) / 2)
            if self[mid] < value {
                low = index(after: mid)
            } else {
                high = mid
            }
        }
        return low < endIndex ? low : nil
    }

    /// First index where element is > value
    func upperBound(of value: Element) -> Index? {
        var low = startIndex
        var high = endIndex
        while low < high {
            let mid = index(low, offsetBy: distance(from: low, to: high) / 2)
            if self[mid] <= value {
                low = index(after: mid)
            } else {
                high = mid
            }
        }
        return low < endIndex ? low : nil
    }
}
