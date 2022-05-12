//
//  FindLongestSubstring.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 10.05.2022.
//

import Foundation

public func findLongestSubstring(_ string: String) -> Int {
    teacherSolution(string)
}

// MARK: - My Solution

private func mySolution(_ string: String) -> Int {
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

// MARK: - Teacher's Solution

private func teacherSolution(_ string: String) -> Int {
    var longest = 0
    var seen = [Character: Int]()
    var start = 0
    
    for i in 0..<string.count {
        let char = string[string.index(string.startIndex, offsetBy: i)]
        if let index = seen[char] {
            start = max(start, index)
        }
        // index - beginning of substring + 1 (to include current in count)
        longest = max(longest, i - start + 1)
        // store the index of the next char so as to not double count
        seen[char] = i + 1
    }
    
    return longest
}
