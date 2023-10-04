//
//  Animation1.swift
//  Shimmer Effect Animations
//
//  Created by Özgür Mercan on 28.09.2023.
//


import SwiftUI

struct ShimmerView: View {
    @State private var shimmerAnimation = false
    @State private var textRotation: Double = 0
    @State private var textScale: CGFloat = 1
    
    var body: some View {
        Text("Shimmer View")
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .bold()
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.purple]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
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
        
            .padding(10)
            .rotationEffect(.degrees(textRotation))
            .scaleEffect(textScale)
            .onAppear() {
                withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)) {
                    shimmerAnimation.toggle()
                }
            }
    }
}


#Preview {
    ShimmerView()
}
