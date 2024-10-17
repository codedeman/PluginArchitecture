//
//  AnyPlugin.swift
//  PluginArchitecture
//
//  Created by Kevin on 10/17/24.
//

import Foundation
import SwiftUI

struct AnyPlugin: Identifiable {
    let id: UUID
    private let _render: () -> AnyView

    // Initializer that accepts any `Plugin`
    init<P: Plugin>(_ plugin: P) {
        self.id = plugin.id
        self._render = { AnyView(plugin.render()) }  // Type erase the plugin's view
    }

    // Call the render function to get the type-erased view
    func render() -> AnyView {
        return _render()
    }
}
