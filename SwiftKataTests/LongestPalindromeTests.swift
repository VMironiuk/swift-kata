//
//  LongestPalindromeTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 15.05.2024.
//

import XCTest

final class LongestPalindromeTests: XCTestCase {
    
    func test() {
        XCTAssertTrue(longestPalindrome("babad") == "bab" || longestPalindrome("babad") == "aba")
        XCTAssertTrue(longestPalindrome("cbbd") == "bb")
        XCTAssertTrue(longestPalindrome("bacabab") == "bacab")
        XCTAssertTrue(longestPalindrome("aacabdkacaa") == "aca")
    }
    
    // MARK: - Solution
    
    private func longestPalindrome(_ s: String) -> String {
        if s.isEmpty { return "" }
        
        var start = s.startIndex
        var end = s.startIndex
        let characters = Array(s)
        
        for i in 0..<characters.count {
            let len1 = expandAroundCenter(characters, i, i) // Odd length palindromes
            let len2 = expandAroundCenter(characters, i, i + 1) // Even length palindromes
            let len = max(len1, len2)
            
            if len > s.distance(from: start, to: end) {
                start = s.index(s.startIndex, offsetBy: i - (len - 1) / 2)
                end = s.index(s.startIndex, offsetBy: i + len / 2)
            }
        }
        
        return String(s[start...end])
    }
    
    private func expandAroundCenter(_ s: [Character], _ left: Int, _ right: Int) -> Int {
        var left = left
        var right = right
        while left >= 0 && right < s.count && s[left] == s[right] {
            left -= 1
            right += 1
        }
        return right - left - 1
    }
}
