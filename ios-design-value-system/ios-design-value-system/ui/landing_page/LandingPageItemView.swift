import Foundation
import UIKit
import SnapKit

class LandingPageItemView: UIView {
    private var itemTitle = UILabel()
    private var itemImage = UIImageView()

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
            $0.setTextAppearance(TextAppearances.Headline)
            addSubview($0)
        }
        itemImage.apply {
            addSubview($0)
        }
        setConstraints()
    }

    private func setConstraints() {
        itemImage.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.centerX.equalTo(safeAreaLayoutGuide)
            make.height.equalTo(Dimens.LandingPageImageHeight)
            make.width.equalTo(Dimens.LandingPageImageWidth)
        }
        itemTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(itemImage.snp.bottom).offset(VerticalSpacings.s)
            make.centerX.equalTo(safeAreaLayoutGuide)
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-VerticalSpacings.m)
        }
    }
    
    public func bind(withTitle text: String, withImage image: UIImage) {
        itemTitle.text = text
        itemImage.image = image
        setNeedsDisplay()
    }
}
