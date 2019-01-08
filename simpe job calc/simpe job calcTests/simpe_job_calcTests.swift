//
//  simpe_job_calcTests.swift
//  simpe job calcTests
//
//  Created by Denis Nefedov on 08/01/2019.
//  Copyright © 2019 X. All rights reserved.
//

import XCTest

class simpe_job_calcTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetHours() {
        // Test for calculatig hours
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4 )
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17 )
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
