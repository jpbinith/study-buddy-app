//
//  SplashScreenView.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack {
//                Pushes content downwards
            Spacer()
//                App logo
            Image("logo")
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color.red)
                .frame(width: 270.0, height: 220.0)
//                Additional space between logo and text
            Spacer()
//                App name displayed in bold, large text
            Text("Study Buddy")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
//                Space between app name and tagline
            Spacer()
//                App tagline
            Text("Your personal mentor, guiding your journey toward academic growth and the pursuit of knowledge")
                .font(.body)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                 // Centers the text across multiple lines
//                Spacer to push content upwards if there is any extra space
            Spacer()
        }
    }
}

#Preview {
    SplashScreenView()
}
