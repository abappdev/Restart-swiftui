//
//  HomeView.swift
//  Restart
//
//  Created by Abhishek Bhalerao on 17/08/25.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("isOnboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "house.fill")
                    .imageScale(.large)

                Text("Homeview!")
            }
            .foregroundStyle(
                LinearGradient(
                    colors: [Color.colorRed, Color.colorBlue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )

            Button(
                action: {
                    isOnboardingViewActive.toggle()
                },
                label: {
                    Text("Restart")
                }
            )

        }
        .padding()
    }
}

#Preview {
    HomeView()
}
