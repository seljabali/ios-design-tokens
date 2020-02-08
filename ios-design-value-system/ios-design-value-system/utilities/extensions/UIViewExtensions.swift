import Foundation
import UIKit

extension UIView {
    func setOnTapListener(target: Any, action: Selector, argument: Any? = nil) {
        self.setOnTapListener(tapNumber: 1, target: target, action: action, argument: argument)
    }

    func setOnTapListener(tapNumber: Int, target: Any, action: Selector, argument: Any? = nil) {
        let tap = MyTapGestureRecognizer(target: target, action: action)
        tap.argument = argument
        tap.numberOfTapsRequired = tapNumber
        addGestureRecognizer(tap)
        isUserInteractionEnabled = true
    }

    func pinToSuperview(with insets: UIEdgeInsets = .zero, edges: UIRectEdge = .all) {
        guard let superview = superview else {
            return
        }
        translatesAutoresizingMaskIntoConstraints = false
        if edges.contains(.top) {
            topAnchor.constraint(equalTo: superview.topAnchor, constant: insets.top).isActive = true
        }
        if edges.contains(.bottom) {
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -insets.bottom).isActive = true
        }
        if edges.contains(.left) {
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: insets.left).isActive = true
        }
        if edges.contains(.right) {
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -insets.right).isActive = true
        }
    }
}

class MyTapGestureRecognizer: UITapGestureRecognizer {
    var argument: Any?
}
