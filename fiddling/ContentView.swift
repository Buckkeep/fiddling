//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 13/01/2025.
//
//  How to use gestures in SwiftUI
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .onTapGesture {
                    print("Text tapped")
                }
        }
        .highPriorityGesture(
            TapGesture()
                .onEnded {
                    print("VStack tapped")
                }
        )
    }
}


    
#Preview {
    ContentView()
}
