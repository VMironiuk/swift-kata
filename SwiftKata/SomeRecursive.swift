//
//  SomeRecursive.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 09.04.2024.
//

// Write a recursive function called "someRecursive" which accepts an array and a callback.
// The function returns true if a single value in the array returns true when passed to the callback. 
// Otherwise it returns false.

import Foundation

public func someRecursive<T>(for array: [T], predicate: (T) -> Bool) -> Bool {
    guard !array.isEmpty else { return false }
    if predicate(array.first!) { return true }
    return someRecursive(for: Array(array[1..<array.endIndex]), predicate: predicate)
}
