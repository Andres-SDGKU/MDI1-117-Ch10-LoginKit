//
//  LoginKitApp.swift
//  LoginKit
//
//  Created by Andres de la Cruz on 10/7/26.
//

import SwiftUI

@main
struct LoginKitApp: App {
    
    init() {
        if ProcessInfo.processInfo.arguments.contains("-UITesting-Reset") {
            SessionStore().clear()
        }
       /// Exercise #3 - Disable animations
        if ProcessInfo.processInfo.arguments.contains("-UITesting-NoAnimations") {
            UIView.setAnimationsEnabled(false)
        }
    }
 
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
