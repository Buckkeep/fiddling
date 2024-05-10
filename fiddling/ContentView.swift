//
//  ContentView.swift
//  fiddling
//
//  Created by Neeta Buhecha on 01/05/2024.
//
//  Selecting dates and times with DatePicker
//

import SwiftUI



struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        
            List {
                Text("Scooby Doo, where are you?")
            }

    }
    
    func testStrings() {
        let input = """
May I compare thee to a summer's day
Thou art more lovely and more temperate
Rough winds do shake the darling buds of May
And summer's lease hath all too short a date
"""
        let lines = input.components(separatedBy: "\n")
        let line = lines.randomElement()
        let trimmed = line?.trimmingCharacters(in: .whitespaces)
    }
    
    func spellCheck() {
        let word = "Swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        
        // report where it found locations of misspellings
        
        let misspeltRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        // No misspelt words means we get NSNotFound back
        
        let allGood = misspeltRange.location == NSNotFound
    }
    
}




#Preview {
    ContentView()
}
