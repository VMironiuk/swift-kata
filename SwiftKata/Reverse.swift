//
//  Reverse.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 06.04.2024.
//

import Foundation

public func reversed(_ string: String) -> String {
    guard let last = string.last else { return "" }
    return String(last).appending(reversed(String(string.dropLast(1))))
}
