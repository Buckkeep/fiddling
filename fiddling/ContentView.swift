//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Placing toolbar buttons in exact locations
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            Text("Hello, world!")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Tap Me") {
                        // button action here
                    }
                }
            }
        }
    }
}

    
#Preview {
    ContentView()
}
