//
//  SameFrequency.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 29.04.2022.
//

import Foundation

public func sameFrequency(_ firstNumber: Int, _ secondNumber: Int) -> Bool {
    var firstArray = [Int]()
    var firstNumberVariable = firstNumber
    while firstNumberVariable > .zero {
        firstArray.append(firstNumberVariable % 10)
        firstNumberVariable /= 10
    }
    
    var secondArray = [Int]()
    var secondNumberVariable = secondNumber
    while secondNumberVariable > .zero {
        secondArray.append(secondNumberVariable % 10)
        secondNumberVariable /= 10
    }

    if firstArray.count != secondArray.count {
        return false
    }
    
    var firstFrequencyCounter = [Int: Int]()
    firstArray.forEach { key in
        if let _ = firstFrequencyCounter[key] {
            firstFrequencyCounter[key]! += 1
        } else {
            firstFrequencyCounter[key] = 1
        }
    }
    
    var secondFrequencyCounter = [Int: Int]()
    secondArray.forEach { key in
        if let _ = secondFrequencyCounter[key] {
            secondFrequencyCounter[key]! += 1
        } else {
            secondFrequencyCounter[key] = 1
        }
    }

    for (key, value) in firstFrequencyCounter {
        if let valueToCompare = secondFrequencyCounter[key], valueToCompare != value {
            return false
        }
    }

    return true
}
