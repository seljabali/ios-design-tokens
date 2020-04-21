import Foundation
import UIKit

extension UIViewController {

    internal func addChild(_ child: UIViewController, in containerView: UIView) {
        guard containerView.isDescendant(of: view) else {
            return
        }
        addChild(child)
        containerView.addSubview(child.view)
        child.view.pinToSuperview()
        child.didMove(toParent: self)
    }

    internal func pushViewController(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }
}
