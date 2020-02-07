import Foundation
import UIKit

class HomeNavigationController: UINavigationController, UINavigationBarDelegate {

    // return: false => will cancel popBack
    public func navigationBar(_ navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool {
        if viewControllers.count < navigationBar.items!.count {
            return true
        }
        if let viewController = topViewController as? NavigationControllerBackButtonDelegate {
            viewController.shouldPopOnBackButtonPress { shouldPop in
                if (shouldPop) {
                    DispatchQueue.main.async {
                        self.popViewController(animated: true)
                    }
                }
            }
            return false
        }
        DispatchQueue.main.async {
            self.popViewController(animated: true)
        }
        return true
    }

}

protocol NavigationControllerBackButtonDelegate {
    func shouldPopOnBackButtonPress(_ completion: @escaping (Bool) -> ())
}