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
    
    @StateObject var listViewModel : ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
           
        }
    }
}
