//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Nick Lavrov on 26.09.2023.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
