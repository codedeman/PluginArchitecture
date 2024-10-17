//
//  ContentView.swift
//  PluginArchitectureUI
//
//  Created by Kevin on 10/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            PluginHostView(
                shortcuts: [
                    AnyPlugin(SamplePlugin(name: "iOS Developer", imageName: "person")),
                    AnyPlugin(SamplePlugin(name: "Nhung V", imageName: "person.2")),
                    AnyPlugin(SamplePlugin(name: "Linh", imageName: "person.3")),
                    AnyPlugin(SamplePlugin(name: "Nhà trọ khu vực Thanh...", imageName: "person.4")),
                    AnyPlugin(SamplePlugin(name: "An", imageName: "person.5")),
                ],
                verticalPlugins: [
                    AnyPlugin(SquarePlugin(name: "Friends", imageName: "person.3")),
                    AnyPlugin(SquarePlugin(name: "Professional dashboard", imageName: "chart.bar")),
                    AnyPlugin(SquarePlugin(name: "Groups", imageName: "person.2")),
                    AnyPlugin(SquarePlugin(name: "Feeds", imageName: "person.2")),
                    AnyPlugin(SquarePlugin(name: "Marketplace", imageName: "cart")),
                    AnyPlugin(SquarePlugin(name: "Video", imageName: "video")),
                    AnyPlugin(SquarePlugin(name: "Ad Centre", imageName: "megaphone")),
                    AnyPlugin(SquarePlugin(name: "Memories", imageName: "clock")),
                    AnyPlugin(SquarePlugin(name: "Saved", imageName: "bookmark")),
                    AnyPlugin(SquarePlugin(name: "Creator Support", imageName: "questionmark")),
                    AnyPlugin(SquarePlugin(name: "Pages", imageName: "folder")),
                    // Add more plugins as needed
                ]
            )
        }
        
        .navigationTitle("Menu") // Optional: Add a title if using NavigationView
    }
}


#Preview {
    ContentView()
}
