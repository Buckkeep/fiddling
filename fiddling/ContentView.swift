//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 02/09/2024.
//
//  How to ask the user to leave an App Store review
//

import StoreKit
import SwiftUI

struct ContentView: View {
    @Environment(\.requestReview) var requestReview
    
    var body: some View {
        Button("Leave a Review") {
            requestReview()
        }
    }
}

    
#Preview {
    ContentView()
}
