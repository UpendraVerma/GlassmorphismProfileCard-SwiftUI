//
//  ContentView.swift
//  GlassCardApp
//
//  Created by upendra verma on 28/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            AnimatedGradientBackground()
            
            VStack {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(.ultraThinMaterial)
                        .background(
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .stroke(
                                    LinearGradient(colors: [.white.opacity(0.3), .purple.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing),
                                    lineWidth: 2
                                )
                        )
                        .shadow(color: .purple.opacity(0.3), radius: 20, x: 0, y: 15)
                        .blur(radius: 0.2)
                    
                    VStack(spacing: 16) {
                        
                        ZStack {
                            Circle()
                                .strokeBorder(
                                    LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing),
                                    lineWidth: 4
                                )
                                .frame(width: 90, height: 90)
                            
                            
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .foregroundStyle(.white.opacity(0.9))
                            
                        }
                        
                        Text("Upendra Verma")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(LinearGradient(colors: [.white, .purple.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                        
                        Text("iOS & SwiftUI Developer")
                            .font(.subheadline)
                            .foregroundStyle(.white.opacity(0.75))
                        
                        HStack(spacing: 24) {
                            IconButton(systemName: "message.fill")
                            IconButton(systemName: "envelope.fill")
                            IconButton(systemName: "link")
                        }
                        
                    }
                    .padding(30)
                }
                .frame(width: 320, height: 320)
                .padding()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
