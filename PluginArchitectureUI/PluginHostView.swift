//
//  PluginHostView.swift
//  PluginArchitecture
//
//  Created by Kevin on 10/17/24.
//

import SwiftUI

struct PluginHostView: View {
    var plugins: [ AnyPlugin]  // Plugins conform to `Plugin` but have different associated types

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(plugins) { plugin in
                    plugin.render()
                        .padding(.horizontal, 8)
                }
            }
            .padding()
        }
    }
}


//#Preview {
//    PluginHostView()
//}
