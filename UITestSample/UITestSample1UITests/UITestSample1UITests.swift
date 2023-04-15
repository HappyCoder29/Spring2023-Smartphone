//
//  UITestSample1UITests.swift
//  UITestSample1UITests
//
//  Created by Drillmaps on 15/04/23.
//

import XCTest

final class UITestSample1UITests: XCTestCase {

    func testLoginHappyPath() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        
        let emailTextField = app.textFields["Email"]
        XCTAssert(emailTextField.exists)
        app.textFields["Email"].tap()
        emailTextField.typeText("ashish@test.com")
    
        let passwordSecureTextField = app.secureTextFields["Password"]
        XCTAssert(passwordSecureTextField.exists)
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("password")
        
        let loginBtn = app.staticTexts["Login"]
        XCTAssert(loginBtn.exists)
        app/*@START_MENU_TOKEN@*/.staticTexts["Login"]/*[[".buttons[\"Login\"].staticTexts[\"Login\"]",".staticTexts[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let loggedInLabel = app.staticTexts["Logged In"]
        XCTAssert(loggedInLabel.exists)

    }
    
    func testLoginFailed() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        
        let emailTextField = app.textFields["Email"]
        XCTAssert(emailTextField.exists)
        app.textFields["Email"].tap()
        emailTextField.typeText("ashish@test.com")
    
        let passwordSecureTextField = app.secureTextFields["Password"]
        XCTAssert(passwordSecureTextField.exists)
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("asdsefergt")
        
        let loginBtn = app.staticTexts["Login"]
        XCTAssert(loginBtn.exists)
        app/*@START_MENU_TOKEN@*/.staticTexts["Login"]/*[[".buttons[\"Login\"].staticTexts[\"Login\"]",".staticTexts[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let statusLabel = app.staticTexts["Please enter valid email/password"]
        XCTAssert(statusLabel.exists)
    }
    
}
