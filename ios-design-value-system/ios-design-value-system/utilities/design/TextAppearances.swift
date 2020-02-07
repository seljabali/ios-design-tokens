import Foundation
import UIKit

enum TextAppearances {
    case Body, Subhead, Title, Large

    func getFont() -> UIFont {
        switch self {
        case .Body:
            return UIFont.systemFont(ofSize: TextSizes.body.cgFloat)
        case .Subhead:
            return UIFont.systemFont(ofSize: TextSizes.subhead.cgFloat)
        case .Title:
            return UIFont.boldSystemFont(ofSize: TextSizes.title.cgFloat)
        case .Large:
            return UIFont.boldSystemFont(ofSize: TextSizes.large.cgFloat)
        }
    }
//    UIFont.preferredFont(forTextStyle: .body)
//    public static let headline: UIFont.TextStyle
//    public static let subheadline: UIFont.TextStyle
//    public static let body: UIFont.TextStyle
//    public static let callout: UIFont.TextStyle
//    public static let footnote: UIFont.TextStyle
//    public static let caption1: UIFont.TextStyle
//    public static let caption2: UIFont.TextStyle
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
