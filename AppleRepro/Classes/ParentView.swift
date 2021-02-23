import SwiftUI

public struct ParentView<Content: View>: View {

    public let content: () -> Content

    public init(content: @escaping () -> Content) {
        self.content = content
    }

    public var body: some View {
        content()
    }
}

struct InternalView: View {
    var body: some View {
        Text("Hello")
    }
}

public extension ParentView {
    init() where Content == InternalView {
        self.content = {
            InternalView()
        }
    }
}
