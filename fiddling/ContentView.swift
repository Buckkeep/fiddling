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
            List(0..<100) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail about row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
            
    }


}

#Preview {
    ContentView()
}
