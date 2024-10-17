//
//  IconPlugin.swift
//  PluginArchitecture
//
//  Created by Kevin on 10/17/24.
//

import Foundation
import SwiftUI

struct IconPlugin: Plugin {
    var id = UUID()
    var name: String
    var imageName: String
    @State private var isVisible: Bool = true

    func render() -> some View {  // The associated type `PluginView` is inferred as `some View`
        VStack {
            if isVisible {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())

                Text(name)
                    .font(.caption)

                Button(action: {
                    isVisible.toggle()  // Hide the view on interaction
                }) {
                    Text("Hide")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
            } else {
                Button(action: {
                    isVisible.toggle()  // Show the view again
                }) {
                    Text("Show \(name)")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}
