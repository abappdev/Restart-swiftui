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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Spacer()

                VStack(spacing: 0) {

                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)

                    Text(
                        """
                        Love blossoms when we freely share,
                        For in giving, hearts truly care.
                        """
                    )
                    .font(.system(size: 20))
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }

                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 300, height: 300, alignment: .center)

                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 300, height: 300, alignment: .center)
                    }

                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }

                Spacer()

                ZStack {
                    Capsule()
                        .fill(.white.opacity(0.2))

                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)

                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x: 20)

                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80, height: 80)

                        Spacer()
                    }

                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)

                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))

                        }.foregroundStyle(.white)
                            .frame(width: 80, height: 80, alignment: .center)

                        Spacer()
                    }

                }
                .frame(height: 80, alignment: .center)
                .padding(20)
            }
        }
    }
}

#Preview {
    OnboardingView()
}
