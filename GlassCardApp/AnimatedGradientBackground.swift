//
//  AnimatedGradientBackground.swift
//  GlassCardApp
//
//  Created by upendra verma on 28/06/25.
//

import SwiftUI

struct AnimatedGradientBackground: View {
    @State private var animate = false
    var body: some View {
        LinearGradient(colors: [.purple, .blue, .indigo, .purple], startPoint: animate ? .topLeading : .bottomTrailing, endPoint: animate ? .bottomTrailing : .topLeading)
            .animation(.easeOut(duration: 5).repeatForever(autoreverses: true), value: animate)
            .onAppear {
                self.animate.toggle()
            }
            .ignoresSafeArea()
    }
}

#Preview {
    AnimatedGradientBackground()
}
