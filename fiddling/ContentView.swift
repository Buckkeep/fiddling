//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//

import SwiftUI

struct Option: Hashable {
    let label: String
    var selected: Bool
}


struct ContentView: View {
    
    @State var options: [Option] = [
        Option(label: "Dot All", selected: false),
        Option(label: "Extended", selected: false),
        Option(label: "Ignore Case", selected: false),
        Option(label: "Multi-line", selected: false),
    ]
    
    var body: some View {
        OptionPicker(options: $options)
    }
}


struct OptionPicker: View {
    
    @Binding var options: [Option]
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id: \.self) { i in
                
                Text(options[i].label)
                    .padding(.horizontal, 4)
                    .padding(5)
                    .background(options[i].selected ? .blue : .gray)
                
                    .onTapGesture {
                        options[i].selected.toggle()
                    }
                
                if i < options.count-1 {
                Divider()
                }
            }
        }
        .foregroundColor(.white)
        .cornerRadius(10)
        .frame(height: 32)
    }
}

#Preview {
    ContentView()
}
