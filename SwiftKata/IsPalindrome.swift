//
//  IsPalindrome.swift
//  SwiftKata
//
//  Created by Volodymyr Myroniuk on 08.04.2024.
//

// Write a recursive function called isPalindrome which returns true
// if the string passed to it is a palindrome (reads the same forward and backward). 
// Otherwise it returns false.

import Foundation

public func isPalindrome(_ string: String) -> Bool {
    guard !string.isEmpty, string.count != 1 else { return true }
    guard string.first == string.last else { return false }
    
    var mutableString = string
    mutableString.removeFirst()
    mutableString.removeLast()
    return isPalindrome(mutableString)
}
