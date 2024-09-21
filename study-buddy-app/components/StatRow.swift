//
//  StatRow.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct StatRow: View {
    let stat: StatRowModel
    var body: some View {
        HStack {
            Image(systemName: stat.iconName)
                .foregroundColor(.red)
                .font(.title2)
            VStack(alignment: .leading) {
                Text(stat.label)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(String(format: "%.2f%%", stat.percentage))
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    StatRow(stat: StatRowModel(iconName: "clock.fill", label: "Quiz", percentage: 85))
}
