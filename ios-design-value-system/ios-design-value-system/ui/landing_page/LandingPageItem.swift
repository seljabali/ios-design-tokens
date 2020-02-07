import Foundation
import UIKit

class LandingPageItem: UIView {
    private var itemTitle = UILabel()

    override init(frame: CGRect) {
      super.init(frame: frame)
      setupView()
    }

    override func updateConstraints() {
        setConstraints()
        super.updateConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        backgroundColor = .white
        itemTitle.apply {
            $0.numberOfLines = 0
            addSubview($0)
        }
        setConstraints()
    }

    private func setConstraints() {
        itemTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(HorizontalSpacings.m)
            make.left.equalTo(self.safeAreaLayoutGuide.snp.left).offset(HorizontalSpacings.m)
            make.right.equalTo(self.safeAreaLayoutGuide.snp.right).offset(-HorizontalSpacings.m)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom).offset(-HorizontalSpacings.m)
        }
    }
    
    public func setTitle(_ text: String) {
        itemTitle.text = text
        itemTitle.setTextAppearance(TextAppearances.Headline)
    }
}
