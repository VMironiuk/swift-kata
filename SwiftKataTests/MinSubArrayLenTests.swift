//
//  MinSubArrayLenTests.swift
//  SwiftKataTests
//
//  Created by Vladimir Mironiuk on 09.05.2022.
//

import XCTest
import SwiftKata

class MinSubArrayLenTests: XCTestCase {
    
    func test_minSubArrayLen() {
        for testCase in makeTestCases() {
            let input = testCase.input
            let sum = testCase.sum
            let expected = testCase.expected
            let actual = minSubArrayLen(input: input, sum: sum)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for input: \(input) and sum: \(sum)"
            )
        }
    }
    
    // MARK: - Helpers
    
    private struct TestCase {
        let input: [Int]
        let sum: Int
        let expected: Int
    }
    
    private func makeTestCases() -> [TestCase] {
        [
            TestCase(input: [], sum: 3, expected: 0),
            TestCase(input: [3, 1, 7, 11, 2, 9, 8, 21, 62, 33, 19], sum: 52, expected: 1),
            TestCase(input: [2, 3, 1, 2, 3, 4], sum: 7, expected: 2),
            TestCase(input: [2, 1, 6, 5, 4], sum: 9, expected: 2),
            TestCase(input: [1, 4, 16, 22, 5, 7, 8, 9, 10], sum: 39, expected: 3),
            TestCase(input: [1, 4, 16, 22, 5, 7, 8, 9, 10], sum: 55, expected: 5),
            TestCase(input: [4, 3, 3, 8, 1, 2, 3], sum: 11, expected: 2),
            TestCase(input: [1, 4, 16, 22, 5, 7, 8, 9, 10], sum: 95, expected: 0),
        ]
    }
}
