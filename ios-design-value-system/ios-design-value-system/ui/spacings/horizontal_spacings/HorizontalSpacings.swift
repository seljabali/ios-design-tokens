import Foundation
import UIKit
import SnapKit

class HorizontalSpacingsViewController : BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.HorizontalSpacings
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
    }

    private func setConstraints() {
    }
}
