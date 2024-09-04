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
    
    let position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )

    var body: some View {
        Map(initialPosition: position)
            .mapStyle(.hybrid)
    }
}


    
#Preview {
    ContentView()
}
