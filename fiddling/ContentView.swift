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
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
            if let fileContents = try? String(contentsOf: fileURL) {
                // do what you want with the string!
            }
        }
    }
}




#Preview {
    ContentView()
}
