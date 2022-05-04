//
//  AveragePair.swift
//  SwiftKataTests
//
//  Created by Vladimir Mironiuk on 04.05.2022.
//

import XCTest
import SwiftKata

class AveragePair: XCTestCase {
    
    func test_averagePair_returnsFalseForArrayWithLessThanTwoElements() {
        for testCase in makeTestCasesWithInputArrayOfLessThanTwoElementsInSize() {
            let expected = testCase.expected
            let inputArray = testCase.inputArray
            let inputAverage = testCase.inputAverage
            let actual = averagePair(inputArray, inputAverage)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \(inputArray) and average pair value of \(inputAverage)"
            )
        }
    }
    
    func test_averagePair_returnsTrueForArrayWithAveragePair() {
        for testCase in makeTestCasesWithAveragePair() {
            let expected = testCase.expected
            let inputArray = testCase.inputArray
            let inputAverage = testCase.inputAverage
            let actual = averagePair(inputArray, inputAverage)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \(inputArray) and average pair value of \(inputAverage)"
            )
        }
    }
    
    func test_averagePair_returnsFalseForArrayWithoutAveragePair() {
        for testCase in makeTestCasesWithoutAveragePair() {
            let expected = testCase.expected
            let inputArray = testCase.inputArray
            let inputAverage = testCase.inputAverage
            let actual = averagePair(inputArray, inputAverage)
            XCTAssertEqual(
                expected,
                actual,
                "Expected \(expected), got \(actual) instead for \(inputArray) and average pair value of \(inputAverage)"
            )
        }
    }

    
    // MARK: - Helpers
    
    private struct TestCase {
        let expected: Bool
        let inputArray: [Int]
        let inputAverage: Double
    }
    
    private func makeTestCasesWithInputArrayOfLessThanTwoElementsInSize() -> [TestCase] {
        [
            TestCase(expected: false, inputArray: [], inputAverage: 2.1),
            TestCase(expected: false, inputArray: [1], inputAverage: 2.0),
        ]
    }
    
    private func makeTestCasesWithAveragePair() -> [TestCase] {
        [
            TestCase(expected: true, inputArray: [1, 2, 3], inputAverage: 2.5),
            TestCase(expected: true, inputArray: [1, 3, 3, 5, 6, 7, 10, 12, 19], inputAverage: 8.0)
        ]
    }
    
    private func makeTestCasesWithoutAveragePair() -> [TestCase] {
        [
            TestCase(expected: false, inputArray: [1, 2, 3], inputAverage: 2.7),
            TestCase(expected: false, inputArray: [1, 3, 3, 5, 6, 7, 10, 12, 19], inputAverage: 17.4),
            TestCase(expected: false, inputArray: [-1, 0, 3, 4, 5, 6], inputAverage: 4.1),
        ]
    }
}
