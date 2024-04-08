//
//  Item.swift
//  GreenThumb
//
//  Created by Paris Floyd (Student) on 4/7/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
