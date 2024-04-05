//
//  RecursiveRangeTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 05.04.2024.
//

import XCTest
import SwiftKata

final class RecursiveRangeTests: XCTestCase {
    func test() {
        XCTAssertEqual(recursiveRange(of: 0), 0)
        XCTAssertEqual(recursiveRange(of: 6), 21)
        XCTAssertEqual(recursiveRange(of: 10), 55)
        XCTAssertEqual(recursiveRange(of: 100), 5050)
        XCTAssertEqual(recursiveRange(of: 1000), 500500)
    }
}
