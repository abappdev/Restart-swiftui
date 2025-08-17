//
//  HomeView.swift
//  Restart
//
//  Created by Abhishek Bhalerao on 17/08/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
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
        .padding()
    }
}

#Preview {
    HomeView()
}
