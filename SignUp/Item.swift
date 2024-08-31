//
//  Item.swift
//  SignUp
//
//  Created by Najd Alsabi on 31/08/2024.
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
