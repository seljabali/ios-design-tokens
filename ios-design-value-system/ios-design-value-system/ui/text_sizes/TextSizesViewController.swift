import Foundation
import UIKit
import SnapKit

class TextSizesViewController : BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.TextSizes
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
    }

    private func setConstraints() {
    }
}
