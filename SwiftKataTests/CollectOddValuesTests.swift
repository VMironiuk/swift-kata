//
//  CollectOddValuesTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 23.07.2022.
//

import XCTest
import SwiftKata

class CollectOddValuesTests: XCTestCase {
    
    func test_collectOddValues() {
        let input = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        let expected = [1, 3, 5, 7, 9]
        let actual = collectOddValues(from: input)
        XCTAssertEqual(expected, actual)
    }
}
