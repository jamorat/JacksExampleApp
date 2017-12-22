//
//  RootRouteTest.swift
//  JacksExampleAppTests
//
//  Created by R on 12/19/17.
//  Copyright © 2017 R. All rights reserved.
//

import XCTest
import Nimble

class RootRouteTest: XCTestCase {
    func testNavigateToView_loadsView() {
        let controller = ViewController.loadFromStoryboard()
        assertThat(controller.view, present())
        
        UIWindow.present(viewController: controller) { () in
            assertThat(controller.someTextLabel.text, presentAnd(equalTo("Why hello there!")))
        }
    }
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
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
