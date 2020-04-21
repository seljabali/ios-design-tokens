import Foundation
import UIKit
import SnapKit

class VerticalViewCell: UITableViewCell {
    public static let IDENTIFIER = VerticalViewCell.simpleClassName
    
    private let titleUILabel = UILabel()
    private let sizeUILabel = UILabel()
    private let topPaddingView = VerticalBlockView()
    private let verticalPaddingView = VerticalBlockView()
    private let bottomPaddingView = VerticalBlockView()
    private var verticalPaddingValue = VerticalSpacings.xs
    
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
    
    public func setVerticalSpacingItem(_ verticalSpacingItem: VerticalSpacingItems) {
        titleUILabel.attributedText = verticalSpacingItem.title.asUnderlined()
        verticalPaddingValue = verticalSpacingItem.spacingValue
        sizeUILabel.text = verticalSpacingItem.spacingValue.string
        setNeedsDisplay()
    }
    
    private func initializeView() {
        backgroundColor = .white
        titleUILabel.apply {
            setTextAppearance(TextAppearances.Body)
            addSubview($0)
        }
        sizeUILabel.apply {
            setTextAppearance(TextAppearances.Body)
            addSubview($0)
        }
        topPaddingView.apply {
            addSubview($0)
        }
        verticalPaddingView.apply {
            $0.backgroundColor = .white
            addSubview($0)
        }
        bottomPaddingView.apply {
            addSubview($0)
        }
        setConstraints()
    }

    private func setConstraints() {
        titleUILabel.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.left.equalTo(safeAreaLayoutGuide).offset(HorizontalSpacings.m)
        }
        sizeUILabel.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(titleUILabel.snp.bottom).offset(VerticalSpacings.m)
            make.left.equalTo(titleUILabel)
        }
        topPaddingView.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(sizeUILabel.snp.bottom).offset(VerticalSpacings.m)
            make.left.equalTo(titleUILabel)
            make.height.equalTo(Dimens.VerticalBarHeight)
            make.width.equalTo(Dimens.VerticalBarWidth)
        }
        verticalPaddingView.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(topPaddingView.snp.bottom)
            make.left.equalTo(titleUILabel)
            make.height.equalTo(verticalPaddingValue)
            make.width.equalTo(Dimens.VerticalBarWidth)
        }
        bottomPaddingView.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(verticalPaddingView.snp.bottom)
            make.left.equalTo(titleUILabel)
            make.height.equalTo(Dimens.VerticalBarHeight)
            make.width.equalTo(Dimens.VerticalBarWidth)
        }
    }
}

