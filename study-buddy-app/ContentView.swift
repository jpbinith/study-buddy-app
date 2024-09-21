//
//  ContentView.swift
//  study-buddy-app
//
//  Created by Binith Jayasinghe on 21/9/2024.
//

import SwiftUI

struct ContentView: View {
//    variable to control the splash screen display
    @State private var showSplash = true
//    variable to track the selected tab in the TabView
    @State private var selectedTab = 0
    var body: some View {
        ZStack {
//            Show SplashScreenView when 'showSplash' is true
            if showSplash {
                SplashScreenView()
//                Show TabView when 'showSplash' is false
            } else {
                TabView {
//                    Home tab
                    HomeView()
                        .tabItem { Label(
                        title: { Text("Home")},
                        icon: { Image(systemName: "house")
                            }
                        ) }
                        .tag(0)
//                    Bookmark tab
                    CalendarView()
                        .tabItem { Label(
                        title: { Text("Calendar")},
                        icon: { Image(systemName: "calendar")
                            .renderingMode(.template)}
                        ) }
                        .tag(1)
//                    Notification tab
                    TodoView()
                        .tabItem { Label(
                        title: { Text("To-do")},
                        icon: { Image(systemName: "book.pages")
                            .renderingMode(.template)}
                        ) }
                        .tag(2)
//                    Settings tab
                    NotificationView()
                        .tabItem { Label(
                        title: { Text("Notification")},
                        icon: { Image(systemName: "bell")
                            .renderingMode(.template)}
                        ) }
                        .tag(3)
                }
//                Set accent color for selected tab items
                .accentColor(Color(red: 18/255, green: 149/255, blue: 117/255))
            }
        }
//        Show splash screen for 3 seconds, then show TabView
        .onAppear {
            DispatchQueue.main
                .asyncAfter(deadline: .now() + 3)
            {
                withAnimation{self.showSplash = false}
            }
        }
    }
}

#Preview {
    ContentView()
}
