//
//  fiddlingApp.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//

import SwiftData
import SwiftUI

@main
struct fiddlingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
