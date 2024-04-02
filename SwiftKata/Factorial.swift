//
//  Factorial.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 02.04.2024.
//

import Foundation

public func factorial(_ number: Int) -> Int {
    guard number >= 0 else { fatalError("number cannot be negative") }
    guard number > 1 else { return 1 }
    return number * factorial(number - 1)
}
