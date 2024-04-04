//
//  PowerTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 03.04.2024.
//

import XCTest
import SwiftKata

final class PowerTests: XCTestCase {
    func test() {
        for base in 0...10 {
            for exponent in 0...10 {
                XCTAssertEqual(
                    power(ofBase: UInt(base), exponent: UInt(exponent)),
                    UInt(pow(Double(base), Double(exponent))),
                    "Expected pow(\(base), \(exponent)) to return \(UInt(pow(Double(base), Double(exponent)))), got \(power(ofBase: UInt(base), exponent: UInt(exponent))) instead")
            }
        }
    }
}
