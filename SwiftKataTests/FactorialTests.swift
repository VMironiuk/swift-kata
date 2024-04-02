//
//  FactorialTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 02.04.2024.
//

import XCTest
import SwiftKata

final class FactorialTests: XCTestCase {
    func test_returns_1_factorial_of_0() {
        XCTAssertEqual(factorial(0), 1)
    }
    
    func test_returns_1_factorial_of_1() {
        XCTAssertEqual(factorial(1), 1)
    }
    
    func test_returns_2_factorial_of_2() {
        XCTAssertEqual(factorial(2), 2)
    }
    
    func test_returns_6_factorial_of_3() {
        XCTAssertEqual(factorial(3), 6)
    }
    
    func test_returns_120_factorial_of_5() {
        XCTAssertEqual(factorial(5), 120)
    }
}
