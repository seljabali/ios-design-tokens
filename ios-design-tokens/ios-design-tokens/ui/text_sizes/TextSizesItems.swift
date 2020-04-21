import Foundation
import UIKit

enum TextSizeItems: Int, CaseIterable {
    case Headline, Subheadline, Body, Callout, Footnote, Caption1, Caption2;

    func getFont() -> UIFont {
        switch self {
        case .Headline:
            return UIFont.preferredFont(forTextStyle: .headline)
        case .Subheadline:
            return UIFont.preferredFont(forTextStyle: .subheadline)
        case .Body:
            return UIFont.preferredFont(forTextStyle: .body)
        case .Callout:
            return UIFont.preferredFont(forTextStyle: .callout)
        case .Footnote:
            return UIFont.preferredFont(forTextStyle: .footnote)
        case .Caption1:
            return UIFont.preferredFont(forTextStyle: .caption1)
        case .Caption2:
            return UIFont.preferredFont(forTextStyle: .caption2)
        }
    }
    
    var title: String {
        switch self {
        case .Headline:
            return Strings.Headline
        case .Subheadline:
            return Strings.Subheadline
        case .Body:
            return Strings.Body
        case .Callout:
            return Strings.Callout
        case .Footnote:
            return Strings.Footnote
        case .Caption1:
            return Strings.Caption1
        case .Caption2:
            return Strings.Caption2
        }
    }
}

