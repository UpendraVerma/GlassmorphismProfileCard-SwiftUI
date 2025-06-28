//
//  IconButton.swift
//  GlassCardApp
//
//  Created by upendra verma on 28/06/25.
//

import SwiftUI

struct IconButton: View {
    let systemName: String
    
    var body: some View {
        Button {
            // handle tap
        } label: {
            Image(systemName: systemName)
                .font(.title2)
                .foregroundStyle(.white.opacity(0.85))
                .padding(10)
                .background(Circle().fill(.ultraThinMaterial))
                .shadow(radius: 5)
        }

    }
}

#Preview {
    IconButton(systemName: "message.fill")
}
