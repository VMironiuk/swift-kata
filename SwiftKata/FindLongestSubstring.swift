//
//  FindLongestSubstring.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 10.05.2022.
//

import Foundation

public func findLongestSubstring(_ string: String) -> Int {
    guard !string.isEmpty else {
        return .zero
    }
    
    guard Set(string).count != string.count else {
        return string.count
    }
    
    var slidingWindowLength = string.count - 1
    
    while 1 < slidingWindowLength {
        for border in slidingWindowLength..<string.count {
            let startIndex = string.index(string.startIndex, offsetBy: border - slidingWindowLength)
            let endIndex = string.index(string.startIndex, offsetBy: border)
            let substring = string[startIndex...endIndex]
            
            if Set(substring).count == substring.count {
                return substring.count
            }
        }
        
        slidingWindowLength -= 1
    }
    
    return slidingWindowLength
}
