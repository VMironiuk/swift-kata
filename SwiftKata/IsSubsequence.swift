//
//  IsSubsequence.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 05.05.2022.
//

import Foundation

public func isSubsequence(_ first: String, _ second: String) -> Bool {
    guard first.count <= second.count else {
        return false
    }
    
    if first == second {
        return true
    }
    
    let firstArray = first.compactMap { $0 }
    let secondArray = second.compactMap { $0 }
    var i = 0
    var j = 0
    while i < firstArray.count && j < secondArray.count {
        if firstArray[i] == secondArray[j] {
            i += 1
            j += 1
        } else {
            j += 1
        }
    }
    
    return firstArray.count == i
}
