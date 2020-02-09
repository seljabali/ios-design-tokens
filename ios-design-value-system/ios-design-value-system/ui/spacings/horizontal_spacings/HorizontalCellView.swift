import Foundation
import UIKit
import SnapKit

class HorizontalCellView: UITableViewCell {
    public static let IDENTIFIER = HorizontalCellView.simpleClassName
    
    private let titleUILabel = UILabel()
    private let sizeUILabel = UILabel()
    private let leftPaddingView = HorizontalBlockView()
    private let horizontaltPaddingView = HorizontalBlockView()
    private let rightPaddingView = HorizontalBlockView()
    private var horizontalPaddingValue = HorizontalSpacings.xs
    
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
    
    public func setHorizontalSpacingItem(_ horizontalSpacingsItem: HorizontalSpacingsItems) {
        titleUILabel.attributedText = horizontalSpacingsItem.title.asUnderlined()
        horizontalPaddingValue = horizontalSpacingsItem.spacingValue
        sizeUILabel.text = horizontalSpacingsItem.spacingValue.string
        setNeedsDisplay()
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
        leftPaddingView.apply {
            addSubview($0)
        }
        horizontaltPaddingView.apply {
            $0.backgroundColor = .white
            addSubview($0)
        }
        rightPaddingView.apply {
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
            make.top.equalTo(safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        leftPaddingView.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(titleUILabel.snp.bottom).offset(VerticalSpacings.m)
            make.height.equalTo(Dimens.HorizontalBarHeight)
            make.width.equalTo(Dimens.HorizontalBarWidth)
            make.right.equalTo(horizontaltPaddingView.snp.left)
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-VerticalSpacings.m)
        }
        horizontaltPaddingView.snp.remakeConstraints { (make) -> Void in
            make.top.bottom.equalTo(leftPaddingView)
            make.height.equalTo(Dimens.HorizontalBarHeight)
            make.width.equalTo(horizontalPaddingValue)
            make.centerX.equalTo(safeAreaLayoutGuide)
        }
        rightPaddingView.snp.remakeConstraints { (make) -> Void in
            make.top.bottom.equalTo(leftPaddingView)
            make.height.equalTo(Dimens.HorizontalBarHeight)
            make.width.equalTo(Dimens.HorizontalBarWidth)
            make.left.equalTo(horizontaltPaddingView.snp.right)
        }
    }
}
