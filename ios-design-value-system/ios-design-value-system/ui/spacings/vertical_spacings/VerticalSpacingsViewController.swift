import Foundation
import UIKit
import SnapKit

class VerticalSpacingsViewController : BaseViewController {
    private var scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.VerticalSpacings
        initializeViews()
        setConstraints()
    }
    
    private func initializeViews() {
        view.backgroundColor = .white
        scrollView.apply {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        var xOffset: CGFloat = 0
        for i in 0 ... (VerticalSpacingItems.allCases.count - 1) {
            let verticalSpacingItem = VerticalSpacingItems.allCases[i]
            let verticalSpacingCellView = VerticalViewCell()
            verticalSpacingCellView.apply {
                $0.setVerticalSpacingItem(verticalSpacingItem)
                $0.tag = i
                $0.frame = CGRect(x: xOffset,
                                  y: CGFloat(VerticalSpacings.s.cgFloat),
                                  width: Dimens.VerticalCellViewWidth.cgFloat,
                                  height: Dimens.VerticalCellViewHeight.cgFloat)
            }
            xOffset += CGFloat(HorizontalSpacings.s.cgFloat) + verticalSpacingCellView.frame.size.width
            scrollView.addSubview(verticalSpacingCellView)
        }
        scrollView.contentSize = CGSize(width: xOffset, height: scrollView.frame.height)
    }

    private func setConstraints() {
        scrollView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-HorizontalSpacings.m)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-VerticalSpacings.m)
        }
    }
}
