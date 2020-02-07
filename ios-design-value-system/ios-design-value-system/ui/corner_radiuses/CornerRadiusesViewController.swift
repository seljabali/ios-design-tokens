import Foundation
import UIKit
import SnapKit

class CornerRadiusesViewController : BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.CornerRadiuses
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
    }

    private func setConstraints() {
    }
}

