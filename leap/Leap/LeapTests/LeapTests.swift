//
//  LeapTests.swift
//  LeapTests
//
//  Created by Jen Trudell on 1/16/16.
//  Copyright © 2016 Jen Trudell. All rights reserved.
//

import XCTest
@testable import Leap

class LeapTests: XCTestCase {
        
    func testVanillaLeapYear() {
        let year = Year(calendarYear: 1996)
        XCTAssertTrue(year.isLeapYear())
    }
    
    func testAnyOldYear() {
        let year = Year(calendarYear: 1997)
        XCTAssertTrue(!year.isLeapYear())
    }
    
    func testCentury() {
        let year = Year(calendarYear: 1900)
        XCTAssertTrue(!year.isLeapYear())
    }
    
    func testExceptionalCentury() {
        let year = Year(calendarYear: 2400)
        XCTAssertTrue(year.isLeapYear())
    }
    
}