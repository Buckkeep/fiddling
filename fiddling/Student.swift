//
//  Student.swift
//  fiddling
//
//  Created by Buhecha, Neeta (Trainee Engineer) on 05/07/2024.
//

import Foundation
import SwiftData

@Model
class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
