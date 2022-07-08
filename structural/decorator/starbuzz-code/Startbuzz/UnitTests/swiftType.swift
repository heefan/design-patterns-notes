//
//  type.swift
//  UnitTests
//
//  Created by litian on 8/7/22.
//

import Foundation
import XCTest


class TypeTest: XCTestCase {
    
    func testSwiftType() throws {
        let range = 1...1000
        print("type: ", type(of: range))
        
        let reverse = range.reversed()
        print("type: ", type(of: reverse))

        let prefix = reverse.prefix(5);
        print("type: ", type(of: prefix))
    }
}
