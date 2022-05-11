//
//  MinSubArrayLen.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 09.05.2022.
//

import Foundation

public func minSubArrayLen(input: [Int], sum: Int) -> Int {
    teacherSolution(input: input, sum: sum)
}

// MARK: - My Solution

private func mySolution(input: [Int], sum: Int) -> Int {
    var slidingWindowLength = 0
    while slidingWindowLength < input.count {
        var tempSum = 0
        for index in 0..<slidingWindowLength {
            tempSum += input[index]
        }
        
        if sum <= tempSum {
            return slidingWindowLength
        }
        
        for index in slidingWindowLength..<input.count {
            tempSum = tempSum - input[index - slidingWindowLength] + input[index]
            if sum <= tempSum {
                return slidingWindowLength
            }
        }
        
        slidingWindowLength += 1
    }
    
    return .zero
}

// MARK: - Teacher's Solution

private func teacherSolution(input: [Int], sum: Int) -> Int {
    var total = 0
    var start = 0
    var end = 0
    var minLength = Int.max
    
    while start < input.count {
        // if current window doesn't add up to the given sum then
        // move the window to right
        if total < sum && end < input.count {
            total += input[end]
            end += 1
        // if current window adds up to at least the sum given then
        // we can shrink the window
        } else if total >= sum {
            minLength = min(minLength, end - start)
            total -= input[start]
            start += 1
        } else {
            break
        }
    }
    
    return minLength == Int.max ? 0 : minLength
}
