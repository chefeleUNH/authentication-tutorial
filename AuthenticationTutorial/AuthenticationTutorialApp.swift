//
//  AuthenticationTutorialApp.swift
//  AuthenticationTutorial
//
//  Created by Charles Hefele on 1/9/21.
//

import SwiftUI

@main
struct AuthenticationTutorialApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(FirebaseSession())
        }
    }
}
