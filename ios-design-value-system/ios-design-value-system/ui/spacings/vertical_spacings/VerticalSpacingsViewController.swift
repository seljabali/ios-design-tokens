import Foundation
import UIKit
import SnapKit

class VerticalSpacingsViewController : BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.VerticalSpacings
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
    }

    private func setConstraints() {
    }
}

