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

        VStack(spacing: 20) {

            Spacer()
            
            ZStack {

                CircleGroupView(ShapeColor: .blue, ShapeOpacity: 0.1)

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }

            VStack {
                Text(
                    "The time that leads to mastery of a skill is the time spent in the dark before the light shines!"
                )
                .font(.title3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(12)
            }

            .foregroundStyle(
                LinearGradient(
                    colors: [Color.colorRed, Color.colorBlue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )

            Spacer()

            Button(
                action: {
                    isOnboardingViewActive.toggle()
                },
                label: {
                    HStack {
                        Image(
                            systemName:
                                "arrow.triangle.2.circlepath.circle.fill"
                        )
                        .imageScale(.large)

                        Text("Restart")
                            .font(.system(.title3, design: .rounded))
                            .fontWeight(.bold)
                    }
                }
            )
            .buttonStyle(.glass)
        }
    }
}

#Preview {
    HomeView()
}
