//
//  AreThereDuplicatesTests.swift
//  SwiftKataTests
//
//  Created by Vladimir Mironiuk on 02.05.2022.
//

import XCTest
import SwiftKata

class AreThereDuplicatesTests: XCTestCase {
    
    func test_areThereDuplicatesReturnsTrueForPositiveCasesForNumbers() {
        let expected = true
        let actual = areThereDuplicates(1, 2, 2)
        XCTAssertEqual(expected, actual)
    }
    
    func test_areThereDuplicatesReturnsFalseForNegativeCasesNumbers() {
        let expected = false
        let actual = areThereDuplicates(1, 2, 3)
        XCTAssertEqual(expected, actual)
    }
}
