//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension Collection where Element: Comparable {
    func indexOfMin() -> Index? {
        guard var minIndex = indices.first else { return nil }
        for index in indices.dropFirst() {
            if self[index] < self[minIndex] {
                minIndex = index
            }
        }
        return minIndex
    }

    func indexOfMax() -> Index? {
        guard var maxIndex = indices.first else { return nil }
        for index in indices.dropFirst() {
            if self[index] > self[maxIndex] {
                maxIndex = index
            }
        }
        return maxIndex
    }
}
