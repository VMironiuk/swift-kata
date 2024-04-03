//
//  SumRangeTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 03.04.2024.
//

import XCTest
import SwiftKata

final class SumRangeTests: XCTestCase {
    func test_returns_0_for_0() {
        XCTAssertEqual(sumRange(for: 0), 0)
    }
    
    func test_returns_1_for_1() {
        XCTAssertEqual(sumRange(for: 1), 1)
    }
    
    func test_returns_3_for_2() {
        XCTAssertEqual(sumRange(for: 2), 3)
    }

    func test_returns_6_for_3() {
        XCTAssertEqual(sumRange(for: 3), 6)
    }
    
    func test_returns_10_for_4() {
        XCTAssertEqual(sumRange(for: 4), 10)
    }

    func test_returns_55_for_10() {
        XCTAssertEqual(sumRange(for: 10), 55)
    }
}
