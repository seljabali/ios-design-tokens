import UIKit
import SnapKit

class LandingPageViewController: BaseViewController {

    private let spacingsPageItem = LandingPageItem()
    private let textSizesPageItem = LandingPageItem()
    private let cornerRadiusesPageItem = LandingPageItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
        spacingsPageItem.apply {
            $0.setTitle(Strings.Spacings)
            view.addSubview($0)
        }
        textSizesPageItem.apply {
            $0.setTitle(Strings.TextSizes)
            view.addSubview($0)
        }
        cornerRadiusesPageItem.apply {
            $0.setTitle(Strings.CornerRadiuses)
            view.addSubview($0)
        }
    }

    private func setConstraints() {
        spacingsPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        textSizesPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        cornerRadiusesPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(spacingsPageItem.safeAreaLayoutGuide.snp.bottom).offset(HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
    }
}
