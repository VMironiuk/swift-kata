//
//  RecursiveRange.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 05.04.2024.
//

import Foundation

public func recursiveRange(of number: UInt) -> UInt {
    guard number != 0 else { return 0 }
    return number + recursiveRange(of: number - 1)
}
