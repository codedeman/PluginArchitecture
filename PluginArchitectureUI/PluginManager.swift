//
//  PluginManager.swift
//  PluginArchitecture
//
//  Created by Kevin on 10/17/24.
//

import Foundation
import SwiftUI

final class PluginManager: ObservableObject {
    @Published var plugins: [any Plugin] = []

    // Function to add a new plugin
    func add(plugin: any Plugin) {
        plugins.append(plugin)
    }

    // Function to remove a plugin by ID
    func remove(pluginID: UUID) {
        plugins.removeAll { $0.id == pluginID }
    }
}
