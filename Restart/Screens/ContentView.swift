//
//  ContentView.swift
//  Restart
//
//  Created by Abhishek Bhalerao on 17/08/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboarding") var isOnboardingViewActive: Bool = true
    var body: some View {
        if isOnboardingViewActive
        {
            OnboardingView()
        }
        else
        {
            HomeView()
        }
        
    }
}

#Preview {
    ContentView()
}
