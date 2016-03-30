//
//  SKTimerTests.swift
//  SKTimerTests
//
//  Created by Kyle Goslan on 30/03/2016.
//  Copyright © 2016 Kyle Goslan. All rights reserved.
//

import XCTest
@testable import SKTimer

class SKTimerTests: XCTestCase {
    
    var timer: SKTimer!
    
    override func setUp() {
        super.setUp()
        timer = SKTimer()
    }
    
    func testTimerDoenstAutoStart() {
        XCTAssertFalse(timer.on)
    }
    
    func testTimerStarts() {
        timer.start(0)
        XCTAssertTrue(timer.on)
    }
    
    func testTimerStopsAtLimit() {
        timer.limit = 5
        timer.start(0)
        XCTAssertTrue(timer.on)
        timer.update(10, completion: nil)
        XCTAssertFalse(timer.on)
    }
    
    func testTimerCompletion() {
        let expectation = expectationWithDescription("Test timer stops")
        timer.limit = 5
        timer.start(0)
        XCTAssertTrue(timer.on)
        timer.update(10) { 
            expectation.fulfill()
        }
        waitForExpectationsWithTimeout(1, handler: { error in
            XCTAssertNil(error, "Error")
        })
    }
    
    
}
