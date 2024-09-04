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
    
    struct Location: Identifiable {
        let id = UUID()
        var name: String
        var coordinate: CLLocationCoordinate2D
    }
    
    let locations = [
        Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        Location(name: "Tower of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]

    
    var body: some View {
        VStack {
            Map {
                ForEach(locations) { location in
                    Annotation(location.name, coordinate: location.coordinate) {
                        Text(location.name)
                            .font(.headline)
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.capsule)
                    }
                    .annotationTitles(.hidden)
                }
            }

        }
    }
    
}


    
#Preview {
    ContentView()
}
