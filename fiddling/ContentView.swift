//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Navigating to different data types using NavigationPath - not tracking the path
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(0..<5) { i in
                    NavigationLink("Select Number: \(i)", value: i)
                }
                
                ForEach(0..<5) { i in
                    NavigationLink("Select String \(i)", value: String(i))
                }

            }
            .navigationDestination(for: Int.self) { selection in 
                Text("You selected the number\(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You selected the string \(selection)")
            }
        }
    }
}

    
#Preview {
    ContentView()
}
