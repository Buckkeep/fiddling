//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Selecting dates and times with DatePicker
//

import SwiftUI

struct User: Codable {
    let firstname: String
    let lastname: String
}

struct ContentView: View {
    
    @State private var user = User(firstname: "Taylor", lastname: "Swift")
    
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
            
    }


}





#Preview {
    ContentView()
}
