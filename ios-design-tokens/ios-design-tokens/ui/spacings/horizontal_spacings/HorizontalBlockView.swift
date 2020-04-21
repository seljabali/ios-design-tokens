import Foundation
import UIKit

class HorizontalBlockView: UIView {
    
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
        height = Dimens.HorizontalBarHeight.cgFloat
        width = Dimens.HorizontalBarWidth.cgFloat
    }
}
