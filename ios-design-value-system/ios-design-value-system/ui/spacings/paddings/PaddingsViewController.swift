import Foundation
import UIKit
import SnapKit

class PaddingsSpacingsViewController : BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.Paddings
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
    }

    private func setConstraints() {
    }
}

