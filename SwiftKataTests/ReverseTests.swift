//
//  ReverseTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 06.04.2024.
//

import XCTest
import SwiftKata

final class ReverseTests: XCTestCase {
    func test() {
        XCTAssertEqual(reversed("awesome"), "emosewa")
        XCTAssertEqual(reversed("rithmschool"), "loohcsmhtir")
    }
}
