//
//  SamplePlugin.swift
//  PluginArchitectureUI
//
//  Created by Kevin on 10/17/24.
//

import SwiftUI

struct SquarePlugin: Plugin {
    var id = UUID()
    var name: String
    var imageName: String

    func render() -> some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 30)
                .padding()
                .background(Color.white)
                .shadow(radius: 3)

            Text(name)
                .font(.headline)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .frame(maxWidth: 80) // Adjust max width for better layout
        }
        .padding()
        .frame(width: 150,height: 100)
        .background(Color.black.opacity(0.1))
        .cornerRadius(15)
    }
}
