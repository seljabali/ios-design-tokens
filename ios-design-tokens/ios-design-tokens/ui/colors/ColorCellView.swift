import Foundation
import UIKit
import SnapKit

class ColorCellView: UITableViewCell {
    public static let IDENTIFIER = ColorCellView.simpleClassName
    
    private let titleUILabel = UILabel()
    private let valueUILabel = UILabel()
    
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
    
    public func setColorItem(_ colorItem: ColorItems) {
        titleUILabel.text = colorItem.title
        valueUILabel.text = colorItem.colorValue.hexString
        backgroundColor = colorItem.colorValue
        setNeedsDisplay()
    }
    
    private func initializeView() {
        backgroundColor = .white
        isUserInteractionEnabled = false
        titleUILabel.apply {
            $0.setTextAppearance(TextAppearances.Body)
            $0.backgroundColor = .black
            $0.textColor = .white
            addSubview($0)
        }
        valueUILabel.apply {
            $0.setTextAppearance(TextAppearances.Body)
            $0.backgroundColor = .black
            $0.textColor = .white
            addSubview($0)
        }
        setConstraints()
    }

    private func setConstraints() {
        titleUILabel.snp.remakeConstraints { (make) -> Void in
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-VerticalSpacings.s)
            make.left.equalTo(safeAreaLayoutGuide).offset(HorizontalSpacings.s)
        }
        valueUILabel.snp.remakeConstraints { (make) -> Void in
            make.top.equalTo(safeAreaLayoutGuide).offset(VerticalSpacings.s)
            make.right.equalTo(safeAreaLayoutGuide).offset(-HorizontalSpacings.s)
        }
    }
}
