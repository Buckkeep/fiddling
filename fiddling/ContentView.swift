//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  How to let the user share content with ShareLink (with preview)
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let frodo = Image(.frodo)
        
        ShareLink(item: frodo, preview: SharePreview("A Baggins", image: frodo)) {
        Label("Click to share", systemImage: "airplane")
        }
    }
}

    
#Preview {
    ContentView()
}
