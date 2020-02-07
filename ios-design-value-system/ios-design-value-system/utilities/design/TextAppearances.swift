import Foundation
import UIKit

enum TextAppearances {
    case Headline, Subheadline, Body, Callout, Footnote, Caption1, Caption2

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
}

extension UILabel {
    func setTextAppearance(_ appearance: TextAppearances) {
        self.font = appearance.getFont()
    }

    convenience init(textAppearance: TextAppearances) {
        self.init()
        self.setTextAppearance(textAppearance)
    }
}

extension UITableViewCell {
    func setTextAppearance(_ appearance: TextAppearances) {
        self.textLabel?.setTextAppearance(appearance)
    }
}
