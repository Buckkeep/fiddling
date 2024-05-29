//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Handling navigation the smart way with navigationDestination()
//

import SwiftUI


struct Student: Hashable {
    let id = UUID()
    let name: String
    let age: Int
}

struct ContentView: View {
    
    var body: some View {
        NavigationStack{
            List(0..<100) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) {selection in
                Text("You selected \(selection)")
            }
        }
        
    }
}

    
#Preview {
    ContentView()
}
