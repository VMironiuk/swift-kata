//
//  AveragePair.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 04.05.2022.
//

import Foundation

public func averagePair(_ inputArray: [Int], _ inputAverage: Double) -> Bool {
    if inputArray.count < 2 {
        return false
    }
    
    var lhs = 0
    var rhs = inputArray.count - 1
    while lhs < rhs {
        let average = (Double(inputArray[lhs]) + Double(inputArray[rhs])) / 2.0
        if average == inputAverage {
            return true
        } else if average < inputAverage {
            lhs += 1
        } else if average > inputAverage {
            rhs -= 1
        }
    }
    
    return false
}
