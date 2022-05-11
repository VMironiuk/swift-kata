//
//  MaxSubarraySum.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 06.05.2022.
//

import Foundation

public func maxSubarraySum(input: [Int], length: Int) -> Int? {
    guard length <= input.count else { return nil }
    
    var maxSum = 0
    for i in 0..<length {
        maxSum += input[i]
    }
    
    var tempSum = maxSum
    for i in length..<input.count {
        tempSum += input[i] - input[i - length]
        maxSum = max(maxSum, tempSum)
    }
    
    return maxSum
}
