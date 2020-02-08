import Foundation
import UIKit

extension String {

    func isNotEmpty() -> Bool  {
        return !self.isEmpty
    }
    
    func asUnderlined() -> NSAttributedString {
        let textRange = NSMakeRange(0, self.count)
        let attributedText = NSMutableAttributedString(string: self)
        attributedText.addAttribute(NSAttributedString.Key.underlineStyle , value: NSUnderlineStyle.single.rawValue, range: textRange)
        return attributedText
    }
    
    func withLetterSpacing(of value: Float) -> NSAttributedString {
//        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: self)
//        attributedString.addAttribute(NSAttributedString.Key.kern, value: value, range: NSMakeRange(0, count))
//        return attributedString
        return NSAttributedString(string: self, attributes: [.kern: value])
    }
}
