//
//  DegreeSummaryComponent.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct DegreeSummaryComponent: View {
    var body: some View {
        HStack(spacing: 50) {
            // GPA Section
            VStack {
                Text("3.47")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Current GPA")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // Courses Completed Section
            VStack {
                Text("4")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Courses Completed")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(15)
        .shadow(radius: 2)
        .frame(maxWidth: .infinity, maxHeight: 100) // Adjust the size
    }
}

#Preview {
    DegreeSummaryComponent()
}
