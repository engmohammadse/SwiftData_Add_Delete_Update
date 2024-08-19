//
//  swiftDataDemoApp.swift
//  swiftDataDemo
//
//  Created by Muhammad Alaraji on 19/08/2024.
//

import SwiftUI
import SwiftData

@main
struct swiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: DataItem.self)
    }
}
