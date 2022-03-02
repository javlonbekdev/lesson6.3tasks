//
//  lesson6_3tasksApp.swift
//  lesson6.3tasks
//
//  Created by Javlonbek on 30/01/22.
//

import SwiftUI

@main
struct lesson6_3tasksApp: App {
    let settings = UserSettings()
    var body: some Scene {
        WindowGroup {
            MainScreen()
                .environmentObject(settings)
        }
    }
}
