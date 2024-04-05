//
//  ProductOfArrayTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 04.04.2024.
//

import XCTest
import SwiftKata

final class ProductOfArrayTests: XCTestCase {
    func test() {
        XCTAssertEqual(productOfArray([]), 1)
        XCTAssertEqual(productOfArray([3]), 3)
        XCTAssertEqual(productOfArray([2, 3]), 6)
        XCTAssertEqual(productOfArray([1, 2, 3]), 6)
        XCTAssertEqual(productOfArray([1, 2, 3, 10]), 60)
    }
}
