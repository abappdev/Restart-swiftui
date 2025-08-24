//
//  CircleGroupView.swift
//  Restart
//
//  Created by Abhishek Bhalerao on 24/08/25.
//

import SwiftUI

struct CircleGroupView: View {

    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isExpanded = false

    var body: some View {
        ZStack {
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 70)
                .frame(width: isExpanded ? 310 : 180, height: isExpanded ? 310 : 180, alignment: .center)
                .animation(.easeInOut(duration: 2.0), value: isExpanded)

            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 70)
                .frame(width: isExpanded ? 180 : 310, height: isExpanded ? 180 : 310, alignment: .center)
                .animation(.easeInOut(duration: 2.0), value: isExpanded)
        }
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 4.5, repeats: true) { _ in
                withAnimation(.easeInOut(duration: 4.5)) {
                    isExpanded.toggle()
                }
            }
        }
    }
}

#Preview {
    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
}
