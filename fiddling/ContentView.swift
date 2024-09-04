//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 04/09/2024.
//
//  Integrating MapKit with SwiftUI
//

import MapKit
import SwiftUI

struct ContentView: View {

    var body: some View {
        Map()
            .mapStyle(.hybrid)
    }
}


    
#Preview {
    ContentView()
}
