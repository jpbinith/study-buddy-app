//
//  CourseSummaryComponent.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct CourseSummaryComponent: View {
    
    let course: CourseModel
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Text(course.courseName)
                    .font(.subheadline)
                    .fontWeight(.medium)
                Spacer()
                Button(action: {
                    // Action for the View button
                }) {
                    Text("View")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                }
            }
            .padding(.bottom, 5)
            
            ZStack(alignment: .topLeading) {
                // Green 50%
                Rectangle()
                    .fill(Color.green)
                    .cornerRadius(15)
                    .frame(width: 300/100*course.currentMarks, height: 30) // Adjust width based on percentage
                    .overlay(
                        Text(String(format: "%.f%%", course.currentMarks))
                            .foregroundColor(.white)
                            .font(.caption)
                            .frame(maxWidth: .infinity, alignment: .trailing) // Text aligned to the end of gray section
                            .padding(.trailing, 8)
                    )
                    .zIndex(3)
                
                // Red 10%
                Rectangle()
                    .fill(Color.red)
                    .cornerRadius(15)
                    .frame(width: 300/100*(course.currentMarks + course.lostMarks), height: 30)
                    .overlay(
                        Text(String(format: "%.2f%%", course.lostMarks))
                            .foregroundColor(.white)
                            .font(.caption)
                            .frame(maxWidth: .infinity, alignment: .trailing) // Text aligned to the end of gray section
                            .padding(.trailing, 8)
                    )
                    .zIndex(2)
                
                // Gray 40%
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .cornerRadius(15)
                    .frame(width: 300, height: 30)
                    .overlay(
                        Text(String(format: "%.2f%%", course.remainingMarks))
                            .foregroundColor(.black)
                            .font(.caption)
                            .frame(maxWidth: .infinity, alignment: .trailing) // Text aligned to the end of gray section
                            .padding(.trailing, 8)
                    )
                    .zIndex(1)
            }
        }
        .padding()
        .background(Color(UIColor(red: 254/255, green: 242/255, blue: 242/255, alpha: 1.0))) // FEF2F2 background
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    CourseSummaryComponent(course: CourseModel(courseName: "Algorithm & Analysis", currentMarks: 40, lostMarks: 20, remainingMarks: 40))
}
