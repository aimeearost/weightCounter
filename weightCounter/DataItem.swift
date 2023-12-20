//
//  DataItem.swift
//  weightCounter
//
//  Created by Aimee Arost on 12/16/23.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var weight: Double
    var date: Date
    
    init(weight: Double, date: Date) {
        
        self.id = UUID().uuidString
        self.weight = weight
        self.date = date
    }
    

    
}

    



