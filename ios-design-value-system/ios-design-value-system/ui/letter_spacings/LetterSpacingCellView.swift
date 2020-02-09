import Foundation
import UIKit
import SnapKit

class LetterSpacingCellView: UITableViewCell {
    public static let IDENTIFIER = LetterSpacingCellView.simpleClassName
    
    private let titleUILabel = UILabel()
    private let sizeUILabel = UILabel()
    private let sampleTextUILabel = UILabel()
    
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
    
    public func setLetterSpacingItem(_ textSizeItem: LetterSpacingItems) {
        let letterSpacingValue = textSizeItem.spacingValue
        titleUILabel.attributedText = textSizeItem.title.asUnderlined()
        sizeUILabel.text = letterSpacingValue.string
        sampleTextUILabel.attributedText = Strings.SampleText.withLetterSpacing(of: letterSpacingValue)
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
        sampleTextUILabel.apply {
            $0.numberOfLines = 0
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
        sampleTextUILabel.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(sizeUILabel.snp.bottom).offset(VerticalSpacings.m)
            make.left.equalTo(titleUILabel)
        }
    }
}
