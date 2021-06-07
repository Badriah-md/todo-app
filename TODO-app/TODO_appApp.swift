//
//  TODO_appApp.swift
//  TODO-app
//
//  Created by Bdoor on 26/10/1442 AH.
//

import SwiftUI

@main
struct TODO_appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
