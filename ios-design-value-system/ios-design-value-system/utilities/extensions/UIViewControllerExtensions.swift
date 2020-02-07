import Foundation
import UIKit

extension UIViewController {

    internal func setNavigationBarTranslucent(_ isTranslucent: Bool) {
        navigationController?.navigationBar.isTranslucent = isTranslucent
    }

    internal func showNavigationBar(_ isShowing: Bool) {
        navigationController?.setNavigationBarHidden(!isShowing, animated: true)
    }

    internal func addChild(_ child: UIViewController, in containerView: UIView) {
        guard containerView.isDescendant(of: view) else {
            return
        }
        addChild(child)
        containerView.addSubview(child.view)
        child.view.pinToSuperview()
        child.didMove(toParent: self)
    }

    internal func removeChild(_ child: UIViewController) {
        child.willMove(toParent: nil)
        child.view.removeFromSuperview()
        child.removeFromParent()
    }

    internal func pushViewController(_ viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }

    internal func backPress() {
        navigationController?.popViewController(animated: true)
    }

    internal func popToRoot() {
        navigationController?.popToRootViewController(animated: true)
    }

    internal func popCount(_ popCount: Int) {
        guard let viewControllerCount = navigationController?.viewControllers.count else { return }
        guard let viewControllerAtIndex = navigationController?.viewControllers[viewControllerCount - popCount - 1] else { return }
        navigationController?.popToViewController(viewControllerAtIndex, animated: true)
    }

    public func addActionSheetForiPad(_ actionSheet: UIAlertController) {
        if let popoverPresentationController = actionSheet.popoverPresentationController {
            popoverPresentationController.sourceView = self.view
            popoverPresentationController.sourceRect = CGRect(x: self.view.bounds.midX, y: self.view.bounds.midY, width: 0, height: 0)
            popoverPresentationController.permittedArrowDirections = []
        }
    }
}