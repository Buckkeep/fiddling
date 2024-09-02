//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  How to let the user share content with ShareLink
//

import PhotosUI
import SwiftUI

struct ContentView: View {
    @State private var pickerItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    
    var body: some View {
        ShareLink(item: URL(string: "https://www.hackingwithswift.com")!, subject: Text("Learn Swift Here"), message: Text("Check out 100 Days of SwiftUI"))
    }
}

    
#Preview {
    ContentView()
}
