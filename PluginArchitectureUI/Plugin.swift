//
//  Plugin.swift
//  PluginArchitecture
//
//  Created by Kevin on 10/17/24.
//

import Foundation
import SwiftUI

protocol Plugin: Identifiable {
    associatedtype PluginView: View  // Define an associated type for the view
    var id: UUID { get }
    var name: String { get }
    var imageName: String { get }
    @ViewBuilder func render() -> PluginView  // Return the associated type
}

