//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Image("frodo")
            Image(decorative: "frodo")
            Image(systemName: "pencil.circle")
                .foregroundStyle(.red)
                .font(.largeTitle)

        Button {
            print("Button was tapped")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
        Button() {
            print("Button was pressed")
        } label: {
            Image("frodo")
        }

    }
}

#Preview {
    ContentView()
}
