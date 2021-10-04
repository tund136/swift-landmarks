//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Danh Tu on 05/10/2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
