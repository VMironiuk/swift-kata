//
//  FindLongestSubstringTests.swift
//  SwiftKataTests
//
//  Created by Vladimir Mironiuk on 10.05.2022.
//

import XCTest
import SwiftKata

class FindLongestSubstringTests: XCTestCase {
    
    func test_findLongestSubstring() {
        for testCase in makeTestCases() {
            let input = testCase.input
            let expected = testCase.expected
            let actual = findLongestSubstring(input)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \"\(input)\""
            )
        }
    }
    
    // MARK: - Helpers
    
    private struct TestCase {
        let input: String
        let expected: Int
    }
    
    private func makeTestCases() -> [TestCase] {
        [
            TestCase(input: "", expected: 0),
            TestCase(input: "bbb", expected: 1),
            TestCase(input: "rithmschool", expected: 7),
            TestCase(input: "thisisawesome", expected: 6),
            TestCase(input: "bbbbbbb", expected: 1),
            TestCase(input: "rw", expected: 2),
            TestCase(input: "r", expected: 1),
            TestCase(input: "longestsubstring", expected: 8),
            TestCase(input: "thisisshowwedoit", expected: 6),
        ]
    }
}
