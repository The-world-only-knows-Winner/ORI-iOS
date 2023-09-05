import SwiftUI

public struct ORIFont: ViewModifier {
    public var style: ORIFontStyle

    public func body(content: Content) -> some View {
        switch style {
        case let .heading(font, weight):
            return content
                .font(.custom("SUIT-\(weight)", size: font.size))

        case let .body(font, weight):
            return content
                .font(.custom("SUIT-\(weight)", size: font.size))
        }
    }
}

public extension View {
    func oriFont(_ style: ORIFontStyle) -> some View {
        self
            .modifier(DesignSystem.ORIFont(style: style))
    }

    func oriSFont(_ style: ORIFontStyle, color: Color) -> some View {
        self
            .oriFont(style)
            .foregroundColor(color)
    }
}