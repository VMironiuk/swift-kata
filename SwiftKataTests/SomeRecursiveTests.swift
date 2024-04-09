//
//  SomeRecursiveTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 09.04.2024.
//

import XCTest
import SwiftKata

final class SomeRecursiveTests: XCTestCase {
    func test_returnsTrue() {
        let isOdd = { $0 % 2 != 0 }
        XCTAssertTrue(someRecursive(for: [1, 2, 3, 4], predicate: isOdd))
        XCTAssertTrue(someRecursive(for: [4, 6, 8, 9], predicate: isOdd))
    }
    
    func test_returnsFalse() {
        let isOdd = { $0 % 2 != 0 }
        XCTAssertFalse(someRecursive(for: [4, 6, 8], predicate: isOdd))
        
        let greaterThanTen = { $0 > 10 }
        XCTAssertFalse(someRecursive(for: [4, 6, 8], predicate: greaterThanTen))
    }
}
