//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper("\(sleepAmount) hours", value: $sleepAmount)
    }
}




#Preview {
    ContentView()
}
