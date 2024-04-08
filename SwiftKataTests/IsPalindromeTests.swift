//
//  IsPalindromeTests.swift
//  SwiftKataTests
//
//  Created by Volodymyr Myroniuk on 08.04.2024.
//

import XCTest
import SwiftKata

final class IsPalindromeTests: XCTestCase {
    func test_returnsFalse() {
        XCTAssertFalse(isPalindrome("awesome"))
        XCTAssertFalse(isPalindrome("foobar"))
        XCTAssertFalse(isPalindrome("amanaplanacanalpandemonium"))
    }
    
    func test_returnsTrue() {
        XCTAssertTrue(isPalindrome("mom"))
        XCTAssertTrue(isPalindrome("tacocat"))
        XCTAssertTrue(isPalindrome("amanaplanacanalpanama"))
    }
}
