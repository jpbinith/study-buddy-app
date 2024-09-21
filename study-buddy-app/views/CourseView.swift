//
//  CourseView.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct CourseView: View {
    
    let assignments = [
        AssignmentRowModel(assignmentName: "Assignment 1", totalMarks: 20, marks: 10),
        AssignmentRowModel(assignmentName: "Assignment 2", totalMarks: 20, marks: 10),
        AssignmentRowModel(assignmentName: "Assignment 3", totalMarks: 20, marks: 10),
    ]
    var body: some View {
        VStack(alignment: .leading) {
            CourseMarksComponent()
            Text("Try to achieve minimum of **5/20** for your next assessment to target an **HD**.")
                .font(.body)
                .padding()
                .background(Color(UIColor(red: 254/255, green: 242/255, blue: 242/255, alpha: 1.0))) // FEF2F2 background color
                .cornerRadius(15)
                .shadow(radius: 2)
                .padding(.horizontal)
            
            Text("Assignments")
                .font(.title3)
                .fontWeight(.bold)
                .padding([.top, .leading])
            VStack {
                ForEach(assignments) {assignment  in
                    AssignmentRowComponent(assignment: assignment)
                }
            }.padding()
            
            Spacer()
        }
        .background(Color(UIColor(red: 254/255, green: 242/255, blue: 242/255, alpha: 1.0)))
    }
}

#Preview {
    CourseView()
}
