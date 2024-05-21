//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Selecting dates and times with DatePicker
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    var body: some View {
            Text("Hello \(name)!")
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
    
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Buckkeep")
        }
    }
}




#Preview {
    ContentView()
}
