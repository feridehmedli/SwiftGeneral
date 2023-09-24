//
//  SWIFTUIIApp.swift
//  SWIFTUII
//
//  Created by Ferid Ehmedli on 03.06.23.
//

import SwiftUI

@main
struct SWIFTUIIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
