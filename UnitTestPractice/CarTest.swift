//
//  CarTest.swift
//  UnitTestPractice
//
//  Created by macbook on 13.11.17.
//  Copyright © 2017 Andersen. All rights reserved.
//

import XCTest
@testable import UnitTestPractice

class CarTest: XCTestCase {
    
    var ferrari: Car!
    var jeep: Car!
    var honda: Car!
    
    func testSportFasterThanJeep() {
        let minutes = 60
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }
    override func setUp() {
        super.setUp()
        
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        honda = Car(type: .Economy, transmissionMode: .Park)
    }
    
    override func tearDown() {
        super.tearDown()
        
        ferrari = nil
        jeep = nil
        honda = nil
    }
    
    func testExample() {

    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
