//
//  ProductOfArray.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 04.04.2024.
//

import Foundation

public func productOfArray<T: Numeric>(_ array: [T]) -> T {
    guard !array.isEmpty else { return 1 }

    func productArrayHelper(from index: Int, to endIndex: Int) -> T {
        guard index != endIndex else { return array[index] }
        return array[index] * productArrayHelper(from: index + 1, to: endIndex)
    }
    
    return productArrayHelper(from: 0, to: array.count - 1)
}

// A better alternative
private func productOfArrayNonRecursive<T: Numeric>(_ array: [T]) -> T {
    array.reduce(1, *)
}
