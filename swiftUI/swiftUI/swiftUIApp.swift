//
//  swiftUIApp.swift
//  swiftUI
//
//  Created by Ferid Ehmedli on 03.06.23.
//

import SwiftUI

@main
struct swiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
