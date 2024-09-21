//
//  HomeScreenHeaderComponent.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct HomeScreenHeaderComponent: View {
    //    Variable to save username
        var user_name = "David"
        var body: some View {
            HStack(alignment: .top) {
                VStack(alignment: .leading){
                    HStack {
    //                    Logo
                        Image("logo")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(Color.red)
                            .frame(width: 40.0, height: 35.0)
    //                    Greetings
                        Text("Hello \(user_name)")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    Text("What are you learning today?")
                        .foregroundColor(Color.gray)
                    
                }
                Spacer()
    //            Avatar
                Image("Avatar")
            }.padding()
        }
}

#Preview {
    HomeScreenHeaderComponent()
}
