//
//  SameFrequencyTests.swift
//  SwiftKataTests
//
//  Created by Vladimir Mironiuk on 29.04.2022.
//

import XCTest
import SwiftKata

class SameFrequencyTests: XCTestCase {
    
    func test_sameFrequencyReturnsTrueForNumbersWithTheSameFrequencyOfDigits() {
        let testCases = makePositiveTestCases()
        for testCase in testCases {
            let firstNumber = testCase.firstNumber
            let secondNumber = testCase.secondNumber
            let expected = testCase.expectedResult
            let actual = sameFrequency(firstNumber, secondNumber)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \(firstNumber) and \(secondNumber) numbers."
            )
        }
    }
    
    func test_sameFrequencyReturnsFalseForNumbersWithDifferentFrequencyOfDigits() {
        let testCases = makeNegativeTestCases()
        for testCase in testCases {
            let firstNumber = testCase.firstNumber
            let secondNumber = testCase.secondNumber
            let expected = testCase.expectedResult
            let actual = sameFrequency(firstNumber, secondNumber)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \(firstNumber) and \(secondNumber) numbers."
            )
        }
    }
    
    // MARK: - Helpers
    
    private struct TestCase {
        let firstNumber: Int
        let secondNumber: Int
        let expectedResult: Bool
    }
    
    private func makePositiveTestCases() -> [TestCase] {
        [
            TestCase(firstNumber: 182, secondNumber: 281, expectedResult: true),
            TestCase(firstNumber: 3589578, secondNumber: 5879385, expectedResult: true),
        ]
    }
    
    private func makeNegativeTestCases() -> [TestCase] {
        [
            TestCase(firstNumber: 22, secondNumber: 222, expectedResult: false),
            TestCase(firstNumber: 14, secondNumber: 34, expectedResult: true),
            TestCase(firstNumber: 3589528, secondNumber: 5879385, expectedResult: true),
        ]
    }
}
