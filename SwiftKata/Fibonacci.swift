//
//  Fibonacci.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 05.04.2024.
//

import Foundation

public func fibonacci(for position: UInt) -> UInt {
    guard position != 0 else { return 0 }
    guard position != 1 else { return 1 }
    return fibonacci(for: position - 2) + fibonacci(for: position - 1)
}
