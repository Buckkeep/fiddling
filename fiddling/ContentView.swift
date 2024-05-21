//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Selecting dates and times with DatePicker
//

import SwiftUI

@Observable
class User {
    var firstname = "Bilbo"
    var lastname = "Baggins"
}

struct ContentView: View {
    
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstname) \(user.lastname)")
            
            TextField("First name", text: $user.firstname)
            
            TextField("Last name", text: $user.lastname)
        }
    }
}




#Preview {
    ContentView()
}
