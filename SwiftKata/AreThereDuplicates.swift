//
//  AreThereDuplicates.swift
//  SwiftKata
//
//  Created by Vladimir Mironiuk on 02.05.2022.
//

import Foundation

public func areThereDuplicates<T: Equatable & Hashable>(_ entities: T...) -> Bool {
    var set: Set<T> = Set()
    for entity in entities {
        if set.contains(entity) {
            return true
        }
        set.insert(entity)
    }
    return false
}
