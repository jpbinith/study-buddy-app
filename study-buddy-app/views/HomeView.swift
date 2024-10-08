//
//  HomeView.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct HomeView: View {
    
    let courses = [
        CourseModel(courseName: "Algorithm & Analysis", currentMarks: 40, lostMarks: 20, remainingMarks: 40),
        CourseModel(courseName: "Big Data Processing", currentMarks: 52, lostMarks: 18, remainingMarks: 30),
        CourseModel(courseName: "AI", currentMarks: 60, lostMarks: 15, remainingMarks: 25),
        CourseModel(courseName: "Database Concepts", currentMarks: 44, lostMarks: 16, remainingMarks: 40)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            HomeScreenHeaderComponent()
            DegreeSummaryComponent()
                .padding(.horizontal)
            Text("Your Recipes")
                .font(.title3)
                .fontWeight(.bold)
                .padding([.top, .leading])
            ForEach(courses) { course in
                CourseSummaryComponent(course: course)
            }
            .padding(.horizontal)
            Spacer()
        }
        .background(Color(UIColor(red: 254/255, green: 242/255, blue: 242/255, alpha: 1.0)))
    }
}

#Preview {
    HomeView()
}
