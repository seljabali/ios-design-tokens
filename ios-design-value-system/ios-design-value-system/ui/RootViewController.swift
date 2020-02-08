import Foundation
import UIKit

private let ANIMATION_DURATION = 0.3

class RootViewController: BaseViewController {
    
    private var current: UIViewController
    
    init() {
        current = HomeNavigationController()
        super.init(nibName:  nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setNewController(current)
        showHome()
    }

    func showHome() {
        let mainViewController = LandingPageViewController()
        let mainScreen = HomeNavigationController(rootViewController: mainViewController)
        animateFadeTransition(to: mainScreen) { [weak self] in
        }
    }
    
    private func setNewController(_ controller: UIViewController) {
        addChild(controller)
        controller.view.frame = view.bounds
        view.addSubview(controller.view)
        controller.didMove(toParent: self)
    }
    
    private func animateFadeTransition(to new: UIViewController, completion: (() -> Void)? = nil) {
        current.willMove(toParent: nil)
        addChild(new)
        transition(from: current, to: new, duration: ANIMATION_DURATION, options: [.transitionCrossDissolve, .curveEaseOut], animations: {}) { completed in
                self.current.removeFromParent()
                new.didMove(toParent: self)
                self.current = new
                completion?()
        }
    }
    
    private func animateDismissTransition(to new: UIViewController, completion: (() -> Void)? = nil) {
        let initialFrame = CGRect(x: -view.bounds.width, y: 0, width: view.bounds.width, height: view.bounds.height)
        current.willMove(toParent: nil)
        addChild(new)
        new.view.frame = initialFrame
        
        transition(from: current, to: new, duration: ANIMATION_DURATION, options: [], animations: {
            new.view.frame = self.view.bounds
        }) { completed in
            self.current.removeFromParent()
            new.didMove(toParent: self)
            self.current = new
            completion?()
        }
    }
}
