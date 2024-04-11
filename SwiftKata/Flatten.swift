//
//  Flatten.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 10.04.2024.
//

// Write a recursive function called flatten which accepts an array of arrays and returns a new array with all values flattened.

import Foundation

public func flatten(_ array: [Any]) -> [Int] {
    guard !array.isEmpty else { return [] }
    
    var firstItem = [Int]()
    if let item = array.first as? Array<Any> {
        firstItem = flatten(item)
    } else {
        firstItem = [array.first as! Int]
    }

    return firstItem + flatten(Array(array[1...]))
}
