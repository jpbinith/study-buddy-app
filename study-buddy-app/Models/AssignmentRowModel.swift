//
//  AssignmentRowModel.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import Foundation

struct AssignmentRowModel: Identifiable {
    var id = UUID()
    var assignmentName: String
    var totalMarks: Double
    var marks: Double
}
