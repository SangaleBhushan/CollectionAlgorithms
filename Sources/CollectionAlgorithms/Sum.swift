//
//  File.swift
//  CollectionAlgorithms
//
//  Created by Siddhatech on 27/06/25.
//

import Foundation
public extension Sequence where Element: Numeric {
    func sum() -> Element {
        reduce(0, +)
    }
}
