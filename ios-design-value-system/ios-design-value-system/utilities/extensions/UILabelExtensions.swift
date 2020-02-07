import Foundation
import UIKit

extension UILabel {
    func setUnderlined() {
        if let currentText = self.text {
            let underlineAttrString = NSAttributedString(string: currentText,
                                                          attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue])
            self.attributedText = underlineAttrString
            return
        }
    }
}

