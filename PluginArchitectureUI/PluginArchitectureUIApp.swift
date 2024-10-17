//
//  PluginArchitectureUIApp.swift
//  PluginArchitectureUI
//
//  Created by Kevin on 10/17/24.
//

import SwiftUI

@main


struct PluginArchitectureUIApp: App {
    let plugins: [AnyPlugin] = [
        AnyPlugin(IconPlugin(name: "Plugin 1", imageName: "star")),
        AnyPlugin(IconPlugin(name: "Plugin 2", imageName: "heart"))
    ]
    var body: some Scene {
        WindowGroup {
            PluginHostView(plugins: plugins)
        }
    }
}
