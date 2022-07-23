//
//  CollectOddValues.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 23.07.2022.
//

import Foundation

public func collectOddValues(from input: [Int]) -> [Int] {
    collectOddValuesByPureRecursion(from: input)
}

/// Example of `Helper Recursion Function`
private func collectOddValuesByHelperRecursionFunction(from input: [Int]) -> [Int] {
    var result: [Int] = []
    
    func helper(input: [Int]) {
        if input.isEmpty {
            return
        }
        
        if input[.zero] % 2 != .zero {
            result.append(input[.zero])
        }
        
        helper(input: Array(input.suffix(from: 1)))
    }
    
    helper(input: input)
    
    return result
}

/// Example of `Pure Recursion`
private func collectOddValuesByPureRecursion(from input: [Int]) -> [Int] {
    var newArray: [Int] = []
    
    if input.isEmpty {
        return newArray
    }
    
    if input[.zero] % 2 != .zero {
        newArray.append(input[.zero])
    }
    
    newArray.append(contentsOf: collectOddValuesByPureRecursion(from: Array(input.suffix(from: 1))))
    
    return newArray
}
