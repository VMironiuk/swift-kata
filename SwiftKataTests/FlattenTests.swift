//
//  FlattenTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 10.04.2024.
//

import XCTest
import SwiftKata

final class FlattenTests: XCTestCase {
    func test() {
        XCTAssertTrue(flatten([]).isEmpty)
        XCTAssertEqual(flatten([1]), [1])
        XCTAssertEqual(flatten([1, 2]), [1, 2])
        
        XCTAssertTrue(flatten([[]]).isEmpty)
        XCTAssertEqual(flatten([[1]]), [1])
        XCTAssertEqual(flatten([[1, 2]]), [1, 2])
        XCTAssertEqual(flatten([1, [2]]), [1, 2])
        XCTAssertEqual(flatten([1, [2], 3]), [1, 2, 3])
        XCTAssertEqual(flatten([[2], 3, 1]), [2, 3, 1])
        XCTAssertEqual(flatten([[2, 3], 1]), [2, 3, 1])
        XCTAssertEqual(flatten([[2, 3], [1]]), [2, 3, 1])
        XCTAssertEqual(flatten([[[5]]]), [5])
        
        XCTAssertEqual(flatten([1, 2, 3, [4, 5] ]), [1, 2, 3, 4, 5])
        XCTAssertEqual(flatten([1, [2, [3, 4], [[5]]]]), [1, 2, 3, 4, 5])
        XCTAssertEqual(flatten([[1],[2],[3]]), [1, 2, 3])
        XCTAssertEqual(flatten([[[[1], [[[2]]], [[[[[[[3]]]]]]]]]]), [1, 2, 3])
    }
}
