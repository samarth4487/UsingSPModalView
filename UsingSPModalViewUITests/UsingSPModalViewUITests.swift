//
//  UsingSPModalViewUITests.swift
//  UsingSPModalViewUITests
//
//  Created by Samarth Paboowal on 04/11/18.
//  Copyright © 2018 Samarth Paboowal. All rights reserved.
//

import XCTest

class UsingSPModalViewUITests: XCTestCase {

    private let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    func testBlackModal() {
        
        app.buttons["Black Modal"].tap()
        app.otherElements.containing(.button, identifier:"Black Modal").element.tap()
    }
    
    func testBlueModal() {
        
        app.buttons["Blue Modal"].tap()
        app.otherElements.containing(.button, identifier:"Blue Modal").element.tap()
    }
    
    func testGreenModal() { // This will always fail as there is no green modal button
        
        app.buttons["Green Modal"].tap()
        app.otherElements.containing(.button, identifier:"Green Modal").element.tap()
    }

}
