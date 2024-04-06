//
//  Reverse.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 06.04.2024.
//

import Foundation

public func reversed(_ string: String) -> String {
    guard !string.isEmpty else { return "" }
    var mutableString = string
    let last = String(mutableString.removeLast())
    return last + reversed(mutableString)
}
