
import SwiftUI

struct AnyPlugin: Plugin {
    private let _id: UUID
    private let _name: String
    private let _imageName: String
    private let _render: () -> AnyView

    init<P: Plugin>(_ plugin: P) {
        _id = plugin.id
        _name = plugin.name
        _imageName = plugin.imageName
        _render = { AnyView(plugin.render()) }
    }

    var id: UUID { _id }
    var name: String { _name }
    var imageName: String { _imageName }

    @ViewBuilder func render() -> some View {
        _render()
    }
}
