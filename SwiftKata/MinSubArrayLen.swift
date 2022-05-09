//
//  MinSubArrayLen.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 09.05.2022.
//

import Foundation

public func minSubArrayLen(input: [Int], sum: Int) -> Int {
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
