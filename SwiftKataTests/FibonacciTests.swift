//
//  FibonacciTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 05.04.2024.
//

import XCTest
import SwiftKata

final class FibonacciTests: XCTestCase {
    func test() {
        XCTAssertEqual(fibonacci(for: 0), 0)
        XCTAssertEqual(fibonacci(for: 1), 1)
        XCTAssertEqual(fibonacci(for: 2), 1)
        XCTAssertEqual(fibonacci(for: 3), 2)
        XCTAssertEqual(fibonacci(for: 4), 3)
        XCTAssertEqual(fibonacci(for: 5), 5)
        XCTAssertEqual(fibonacci(for: 6), 8)
        XCTAssertEqual(fibonacci(for: 7), 13)
        XCTAssertEqual(fibonacci(for: 8), 21)
        XCTAssertEqual(fibonacci(for: 9), 34)
        XCTAssertEqual(fibonacci(for: 10), 55)
        XCTAssertEqual(fibonacci(for: 28), 317811)
        XCTAssertEqual(fibonacci(for: 35), 9227465)
    }
}
