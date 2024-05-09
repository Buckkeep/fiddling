//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Selecting dates and times with DatePicker
//

import SwiftUI



struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
        Text("\(wakeUp)")
        DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
            .labelsHidden()
        DatePicker("Please enter a date", selection: $wakeUp, in:Date.now...)
            .labelsHidden()
    }
}




#Preview {
    ContentView()
}
