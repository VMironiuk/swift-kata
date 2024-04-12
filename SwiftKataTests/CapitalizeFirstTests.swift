//
//  CapitalizeFirstTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 12.04.2024.
//

// Write a recursive function called "capitalizeFirst".
// Given an array of strings, capitalize the first letter of each string in the array.

import XCTest

final class CapitalizeFirstTests: XCTestCase {
    func test() {
        XCTAssertEqual(capitalizeFirst(in: []), [])
        XCTAssertEqual(capitalizeFirst(in: ["car", "taco", "banana"]), ["Car", "Taco", "Banana"])
    }
    
    // MARK: - Solution
    
    private func capitalizeFirst(in array: [String]) -> [String] {
        guard !array.isEmpty else { return [] }
        return [array[0].capitalized] + capitalizeFirst(in: Array(array[1...]))
    }
}
