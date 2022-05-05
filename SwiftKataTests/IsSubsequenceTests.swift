//
//  IsSubsequenceTests.swift
//  SwiftKataTests
//
//  Created by Vladimir Mironiuk on 05.05.2022.
//

import XCTest
import SwiftKata

class IsSubsequenceTests: XCTestCase {

    func test_isSubsequence_returnsTruePositiveTestCases() {
        let testCases = makePositiveTestCases()
        for testCase in testCases {
            let expected = testCase.expected
            let firstInput = testCase.firstInput
            let secondInput = testCase.secondInput
            let actual = isSubsequence(firstInput, secondInput)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \"\(firstInput)\" and \"\(secondInput)\""
            )
        }
    }
    
    func test_isSubsequence_returnsFalseNegativeTestCases() {
        let testCases = makeNegativeTestCases()
        for testCase in testCases {
            let expected = testCase.expected
            let firstInput = testCase.firstInput
            let secondInput = testCase.secondInput
            let actual = isSubsequence(firstInput, secondInput)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \"\(firstInput)\" and \"\(secondInput)\""
            )
        }
    }
    
    // MARK: - Helpers
    
    private struct TestCase {
        let expected: Bool
        let firstInput: String
        let secondInput: String
    }
    
    private func makePositiveTestCases() -> [TestCase] {
        [
            TestCase(expected: true, firstInput: "", secondInput: ""),
            TestCase(expected: true, firstInput: "abc", secondInput: "abc"),
            TestCase(expected: true, firstInput: "abc", secondInput: "abcdefg"),
            TestCase(expected: true, firstInput: "hello", secondInput: "hello world"),
            TestCase(expected: true, firstInput: "sing", secondInput: "sting"),
            TestCase(expected: true, firstInput: "abc", secondInput: "abracadabra"),
        ]
    }
    
    private func makeNegativeTestCases() -> [TestCase] {
        [
            TestCase(expected: false, firstInput: "abc", secondInput: "a"),
            TestCase(expected: false, firstInput: "abc", secondInput: "acb"),
        ]
    }
}
