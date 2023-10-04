//
//  Animation2.swift
//  Shimmer Effect Animations
//
//  Created by Özgür Mercan on 28.09.2023.
//

import SwiftUI

struct Animation2: View {
    @State private var shimmerAnimation = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.blue, Color.purple]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.clear, Color.white.opacity(0.5), Color.clear]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .offset(x: shimmerAnimation ? UIScreen.main.bounds.width : -UIScreen.main.bounds.width)
                )
                .edgesIgnoringSafeArea(.all)

            Text("Shimmer View")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .bold()
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)) {
                shimmerAnimation.toggle()
            }
        }
    }
}


#Preview {
    Animation2()
}
