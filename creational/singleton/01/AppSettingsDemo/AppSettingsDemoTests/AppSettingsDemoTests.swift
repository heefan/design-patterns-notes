//
//  AppSettingsDemoTests.swift
//  AppSettingsDemoTests
//
//  Created by litian on 12/2/20.
//  Copyright © 2020 Singapore Airlines. All rights reserved.
//

import XCTest

class AppSettingsDemoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testConcurrentUsage() {
        let concurrentQueue = DispatchQueue(label: "ConcurrentQueue", attributes: .concurrent)
        let expect = expectation(description: description: "Using AppSettings.share from multiple threads shall success")

        let callCount = 100
        for callCount in 1...
        waitForExpectations(timeout: 5) {

        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
