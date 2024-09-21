//
//  AssignmentRowComponent.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct AssignmentRowComponent: View {
    
    let assignment: AssignmentRowModel
    
    var body: some View {
        VStack {
            HStack {
                Text(assignment.assignmentName)
                    .font(.subheadline)
                Spacer()
                Text(String(format: "%.f%/%.f", assignment.marks, assignment.totalMarks))
                    .font(.subheadline)
                    .fontWeight(.bold)
                Spacer()
                Button(action: {
                    // View action
                }) {
                    Text("View")
                        .foregroundColor(.blue)
                }
            }
            
            ProgressView(value: assignment.marks / assignment.totalMarks) // Dynamic progress value
                .progressViewStyle(LinearProgressViewStyle(tint: assignment.marks > 0 ? Color.green : Color.gray)) // Color based on marks
                .scaleEffect(x: 1, y: 2, anchor: .center)
                .padding()
        }
        .padding()
        .background(Color(UIColor(red: 254/255, green: 242/255, blue: 242/255, alpha: 1.0))) // FEF2F2 background
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    AssignmentRowComponent(assignment: AssignmentRowModel(assignmentName: "Assignment 1", totalMarks: 20, marks: 15))
}
