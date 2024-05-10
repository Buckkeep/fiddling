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
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        
            List {
                Text("Scooby Doo, where are you?")
                
                ForEach(people, id: \.self) {
                    Text($0)
                }
                
                Text("Donde estas, Scooby Doo?")
            }

    }
}




#Preview {
    ContentView()
}
