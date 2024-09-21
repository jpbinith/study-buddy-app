//
//  StatRowModel.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import Foundation

struct StatRowModel: Identifiable {
    var id = UUID()
    var iconName: String
    var label: String
    var percentage: Double
}
