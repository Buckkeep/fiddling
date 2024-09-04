//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 03/09/2024.
//
//  Adding conformance to Comparable for custom types
//

import SwiftUI

struct ContentView: View {
    let values = [1,5,3,6,2,9].sorted()
    var body: some View {
        List(values, id: \.self) {
            Text(String($0))
        }
    }
}

    
#Preview {
    ContentView()
}
