//
//  DataItem.swift
//  swiftDataDemo
//
//  Created by Muhammad Alaraji on 19/08/2024.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    
    
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
    
}
