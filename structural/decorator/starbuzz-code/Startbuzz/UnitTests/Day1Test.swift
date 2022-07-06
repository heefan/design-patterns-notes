//
//  UnitTests.swift
//  UnitTests
//
//  Created by litian on 6/7/22.
//

import XCTest

class Day1Test: XCTestCase {

    func testOrderCoffee() throws {
        let darkRoast = DarkRoast()
        
        XCTAssertTrue(darkRoast.cost() == 2.0)
    }
}
