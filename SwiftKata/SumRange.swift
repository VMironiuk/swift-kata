//
//  SumRange.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 03.04.2024.
//

import Foundation

public func sumRange(for number: UInt) -> UInt {
    guard number != 0 else { return 0 }
    return number + sumRange(for: number - 1)
}
