import Foundation
import UIKit

class VerticalBlockView: UIView {
    
    override init(frame: CGRect){
      super.init(frame: frame)
      initializeView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }

    private func initializeView() {
        backgroundColor = PresetColors.aqua
        height = Dimens.VerticalBarHeight.cgFloat
        width = Dimens.VerticalBarWidth.cgFloat
    }
}
