//
//  SamplePlugin.swift
//  PluginArchitectureUI
//
//  Created by Kevin on 10/17/24.
//

import SwiftUI

struct SamplePlugin: Plugin {
    var id = UUID()
    var name: String
    var imageName: String

    func render() -> some View {
        VStack {
            // Circular Image
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .padding()
                .background(Color.white)
                .clipShape(Circle())
                .shadow(radius: 3)

            Text(name)
                .font(.headline)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .frame(maxWidth: 80) // Adjust max width for better layout
        }
        .padding()
        .background(Color.black.opacity(0.1))
        .cornerRadius(15)
    }
}
