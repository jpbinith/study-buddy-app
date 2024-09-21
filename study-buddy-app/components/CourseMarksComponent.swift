//
//  CourseMarks.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct CourseMarksComponent: View {
    let stats = [
        StatRowModel(iconName: "clock.fill", label: "Quiz", percentage: 85),
        StatRowModel(iconName: "checkmark.circle.fill", label: "Content Watched", percentage: 70),
        StatRowModel(iconName: "person.fill", label: "Attendance", percentage: 90)
    ]
    var body: some View {
        HStack(alignment: .top, spacing: 20) {
            VStack(alignment: .leading, spacing: 15) {
                ForEach(stats) { stat in
                    StatRow(stat: stat)
                }
            }
            .padding(.leading, 20)
            
            Spacer()
            
            // Circular Progress View
            VStack {
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.2), lineWidth: 10)
                        .frame(width: 90, height: 90)
                    
                    Circle()
                        .trim(from: 0, to: 0.5) // 50% completed
                        .stroke(Color.green, lineWidth: 10)
                        .rotationEffect(.degrees(-90))
                        .frame(width: 90, height: 90)
                    
                    Circle()
                        .trim(from: 0, to: 0.25) // 25% remaining
                        .stroke(Color.red, lineWidth: 10)
                        .rotationEffect(.degrees(180))
                        .frame(width: 90, height: 90)
                    
                    VStack {
                        Text("50%")
                            .font(.title2)
                            .foregroundColor(.green)
                        Text("25%")
                            .font(.title2)
                            .foregroundColor(.red)
                    }
                }
            }
            .padding(.trailing, 20)
        }
        .padding(20)
//        .background(Color(.systemGray6))
//        .cornerRadius(15)
//        .shadow(radius: 2)
    }
}

#Preview {
    CourseMarksComponent()
}
