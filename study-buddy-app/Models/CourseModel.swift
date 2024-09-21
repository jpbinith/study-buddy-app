//
//  CourseModel.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import Foundation

struct CourseModel: Identifiable {
//    Unique identifier for each recipe
    var id = UUID()
    var courseName: String
    var currentMarks: Double
    var lostMarks: Double
    var remainingMarks: Double
}
