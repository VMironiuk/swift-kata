//
//  MaxSubarraySumTests.swift
//  SwiftKataTests
//
//  Created by Vladimir Mironiuk on 06.05.2022.
//

import XCTest
import SwiftKata

class MaxSubarraySumTests: XCTestCase {
    
    func test_maxSubarraySum_returnsNilIfNumberGreaterThanSubarrayLength() {
        for testCase in makeTestCases() {
            let input = testCase.input
            let number = testCase.length
            let expected = testCase.expected
            let actual = maxSubarraySum(input: input, length: number)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(String(describing: expected)), got \(String(describing: actual)) instead for \(input) and subarray of length \(number)"
            )
        }
    }
    
    // MARK: - Helpers
    
    private struct TestCase {
        let input: [Int]
        let length: Int
        let expected: Int?
    }
    
    private func makeTestCases() -> [TestCase] {
        [
            TestCase(input: [1, 2], length: 3, expected: nil),
            TestCase(input: [100, 200, 300, 400], length: 2, expected: 700),
            TestCase(input: [1, 4, 2, 10, 23, 3, 1, 0, 20], length: 4, expected: 39),
            TestCase(input: [-3, 4, 0, -2, 6, -1], length: 2, expected: 5),
            TestCase(input: [3, -2, 7, -4, 1, -1, 4, -2, 1], length: 2, expected: 5)
        ]
    }
}
