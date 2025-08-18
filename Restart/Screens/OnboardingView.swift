//
//  OnboardingView.swift
//  Restart
//
//  Created by Abhishek Bhalerao on 17/08/25.
//

import SwiftUI

struct OnboardingView: View {

    @AppStorage("isOnboarding") var isOnboardingViewActive: Bool = false

    var body: some View {
        VStack {
            VStack {
                Image(systemName: "greetingcard.fill")
                    .imageScale(.large)

                Text("Onboarding!")
            }
            .foregroundStyle(
                LinearGradient(
                    colors: [Color.colorRed, Color.colorBlue],
                    startPoint: .bottomTrailing,
                    endPoint: .topLeading
                )
            )

            Button(
                action: {
                    
                    isOnboardingViewActive.toggle()

                    
                },
                label: {
                    Text("Continue")
                }
            )

        }
        .padding()
    }
}

#Preview {
    OnboardingView()
}
