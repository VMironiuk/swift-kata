//
//  Power.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 03.04.2024.
//

// Write a function called power which accepts a base and an exponent.
// The function should return the power of the base to the exponent.
// This function should mimic the functionality of Math.pow() -
// do not worry about negative bases and exponents.

import Foundation

public func power(ofBase base: UInt, exponent: UInt) -> UInt {
    guard exponent != 0 else { return 1 }
    return base * power(ofBase: base, exponent: exponent - 1)
}
