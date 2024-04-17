//
//  NestedEvenSum.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 17.04.2024.
//

import XCTest

final class NestedEvenSum: XCTestCase {
    
    func test_simple() {
        let object: [String: Any] = [
            "outer": 2,
            "obj": [
                "inner": 2,
                "otherObj": [
                    "superInner": 2,
                    "notANumber": true,
                    "alsoNotANumber": "yup"
                ]
            ]
        ]
        XCTAssertEqual(nestedEvenSum(for: object), 6)
    }
    
    func test_complex() {
        let object: [String: Any] = [
            "a": 2,
            "b": [
                "b": 2,
                "bb": [
                    "b": 3,
                    "bb": [
                        "b": 2
                    ]
                ]
            ],
            "c": [
                "c": [
                    "c": 2
                ],
                "cc": "ball",
                "ccc": 5
            ],
            "d": 1,
            "e": [
                "e": [
                    "e": 2
                ],
                "ee": "car"
            ]
        ]
        XCTAssertEqual(nestedEvenSum(for: object), 10)
    }

    // MARK: - Solution
    
    private func nestedEvenSum(for object: Any) -> Int {
        if let number = object as? Int, number % 2 == 0 { return number }
        guard let dict = object as? [String: Any] else { return 0 }
        
        var sum = 0
        for value in dict.values {
            sum += nestedEvenSum(for: value)
        }
        return sum
    }
}
