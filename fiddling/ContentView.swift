//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Pushing new views onto the stack using NavigationLink
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            NavigationLink("Tap Me") {
                Text("Detail View")
            }
                .navigationTitle("SwiftUI")
        }
            
    }


}

#Preview {
    ContentView()
}
