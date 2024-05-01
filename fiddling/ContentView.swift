//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show warning in heart") {
            showingAlert = true
        }
        .alert("They're taking the Hobbits to Isengard!", isPresented: $showingAlert) {
            Button("Forth Eorlingas!", role: .destructive) { }
            Button("Run short distance", role: .cancel) { }
        }
    }
}

#Preview {
    ContentView()
}
