//
//  PluginHostView.swift
//  PluginArchitecture
//
//  Created by Kevin on 10/17/24.
//

import SwiftUI

import SwiftUI

struct PluginHostView: View {
    var shortcuts: [AnyPlugin] // Horizontal items
    var verticalPlugins: [AnyPlugin] // Vertical items

    var body: some View {
        ScrollView { // Wrap the entire VStack in a ScrollView
            VStack(alignment: .leading) {
                ChatRowView()
                Text("Your shortcut")
                    .font(.subheadline)
                    .padding(.leading, 8)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(shortcuts) { plugin in
                            plugin.render()
                        }
                    }
                    .padding(.horizontal)
                }
//                .padding(.top)
                Spacer()
                // Vertical list of other plugins
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 15) {
                    ForEach(verticalPlugins) { plugin in
                        plugin.render()
                    }
                }
                .padding(.top)
                .padding(.horizontal, 5)
            }
            .padding(.bottom)
            .background(Color(.systemBackground))
        }
    }
}
