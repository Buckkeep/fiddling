//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Save NavigationStack paths using Codable - NavigationPath
//

import SwiftUI

@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try?
                // CodeableRepresentation is a method for NavigationPath that makes it usable wherever Codable is required.
                JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
        // if you couldn't decode it/load the file the return will bring us here
        path = NavigationPath()
    }
    
    
    func save() {
        
        // attempt to retrieve codeable data  but bail out if something doesn't conform
        guard let representation = path.codable else {return}
        do {
            // encode the pre-checked data
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
    
}

struct DetailView: View {
    var number: Int
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 0...1000))
            .navigationTitle("Number: \(number)")
    }
}

struct ContentView: View {
    // initialise the variable as an instance of the newly created Class
    @State private var pathStore = PathStore()
    
    var body: some View {
        // point the path to the path variable within the pathStore instance
        NavigationStack(path: $pathStore.path) {
            DetailView(number: 0)
                .navigationDestination(for: Int.self) {i in
                    DetailView(number: i)
                }
        }
    }
}

    
#Preview {
    ContentView()
}
