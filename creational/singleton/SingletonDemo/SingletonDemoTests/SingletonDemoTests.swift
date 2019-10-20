//
//  SingletonDemoTests.swift
//  SingletonDemoTests
//
//  Created by SIADEV on 21/10/19.
//  Copyright © 2019 Singapore Airlines. All rights reserved.
//

import XCTest
@testable import SingletonDemo

class SingletonDemoTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testConcurrencyIssue() {
        let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
        let expect = expectation(description: "Using AppSettings.shared from multi-thread should success")

        let callCount = 100
        for callIndex in 1...callCount {
            concurrentQueue.async {
                AppSettings.shared.set(value: callIndex, forKey: String(callIndex))
            }
        }
        
        while AppSettings.shared.int(forKey: String(callCount)) != callCount {
            //
        }
        
        expect.fulfill()
        
        waitForExpectations(timeout: 5, handler: {error in
            XCTAssertNil(error, "The expectation failed")
        })
        
    }

    func testPerformanceExample() {
        self.measure {
        }
    }

}
