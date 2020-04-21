import Foundation
import UIKit
import SnapKit

class CornerRadiusCellView: UITableViewCell {
    public static let IDENTIFIER = CornerRadiusCellView.simpleClassName
    
    private let titleUILabel = UILabel()
    private let sizeUILabel = UILabel()
    private let button = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String!) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initializeView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setConstraints()
    }
    
    public func setCornerRadiusItem(_ cornerRadiusItem: CornerRadiusItems) {
        let radiusValue = cornerRadiusItem.radiusValue
        titleUILabel.attributedText = cornerRadiusItem.title.asUnderlined()
        sizeUILabel.text = radiusValue.string
        button.layer.cornerRadius = radiusValue.cgFloat
        setNeedsDisplay()
        setNeedsLayout()
    }
    
    private func initializeView() {
        backgroundColor = .white
        isUserInteractionEnabled = false
        titleUILabel.apply {
            setTextAppearance(TextAppearances.Body)
            addSubview($0)
        }
        sizeUILabel.apply {
            setTextAppearance(TextAppearances.Body)
            addSubview($0)
        }
        button.apply {
            $0.clipsToBounds = true
            $0.backgroundColor = PresetColors.aqua
            $0.height = Dimens.CornerRadiusButtonHeight.cgFloat
            $0.width = Dimens.CornerRadiusButtonWidth.cgFloat
            addSubview($0)
        }
        setConstraints()
    }

    private func setConstraints() {
        titleUILabel.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.left.equalTo(safeAreaLayoutGuide)
        }
        sizeUILabel.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(titleUILabel.snp.bottom).offset(VerticalSpacings.m)
            make.left.equalTo(titleUILabel)
        }
        button.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(sizeUILabel.snp.bottom).offset(VerticalSpacings.m)
            make.left.equalTo(titleUILabel)
            make.height.equalTo(Dimens.CornerRadiusButtonHeight)
            make.width.equalTo(Dimens.CornerRadiusButtonWidth)
        }
    }
}
