//
//  FloatingPointTestCase.swift
//  
//
//  Created by J Rogel PhD on 18/10/2022.
//

import XCTest
import MyLibrary

final class FloatingPointTestCase: XCTestCase {
    func test_isInteger() {
        XCTAssert(1.0.isInteger)
        XCTAssertFalse( (1.1 as CGFloat).isInteger)
    }
}
