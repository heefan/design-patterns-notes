//
//  Day2Test.swift
//  UnitTests
//
//  Created by litian on 6/7/22.
//

import XCTest

class Day2Test: XCTestCase {

    func testDarkRoastWithSoya() throws {
        var beverage: Beverage = DarkRoast()
        
        beverage = Soya(beverage)
        
        let description = "\(beverage.description())"
        let cost = "\(beverage.cost())"
        
        XCTAssertTrue(description == "DarkRoast Soya")
        XCTAssertTrue(cost == "3.0")
                      
        
    }
}