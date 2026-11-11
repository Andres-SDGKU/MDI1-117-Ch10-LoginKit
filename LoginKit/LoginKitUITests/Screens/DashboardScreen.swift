//
//  DashboardScreen.swift
//  LoginKit
//
//  Created by Andres de la Cruz on 10/7/26.
//
 
import XCTest

struct DashboardScreen {
    let app: XCUIApplication
    
    var welcomeLabel: XCUIElement { app.staticTexts["welcome_label"] }
    var logoutButton: XCUIElement { app.buttons["logout_button"] }
    
    @discardableResult
    func logout() -> Self {
        XCTAssertTrue(logoutButton.wait(until: "isEnabled == true"), "Logout button never became enabled")
        logoutButton.tap()
        return self
    }
}
