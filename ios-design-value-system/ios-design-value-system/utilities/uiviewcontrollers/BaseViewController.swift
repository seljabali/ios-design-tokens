import UIKit

class BaseViewController: UIViewController, NavigationControllerBackButtonDelegate  {

    internal func shouldPopOnBackButtonPress(_ completion: @escaping (Bool) -> ()) {
        completion(true)
    }
}
