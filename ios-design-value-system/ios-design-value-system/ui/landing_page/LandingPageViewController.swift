import UIKit
import SnapKit

class LandingPageViewController: BaseViewController {

    private let spacingsPageItem = LandingPageItemView()
    private let textSizesPageItem = LandingPageItemView()
    private let cornerRadiusesPageItem = LandingPageItemView()
    private let letterSpacingsPageItem = LandingPageItemView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.DesignValueSystem
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
        spacingsPageItem.apply {
            $0.bind(withTitle: LandingPageItems.Spacings.title, withImage: LandingPageItems.Spacings.image)
            $0.setOnTapListener(target: self, action: #selector(onSpacingsPageItemTapped))
            view.addSubview($0)
        }
        textSizesPageItem.apply {
            $0.bind(withTitle: LandingPageItems.TextSizes.title, withImage: LandingPageItems.TextSizes.image)
            $0.setOnTapListener(target: self, action: #selector(onTextSizesPageItemTapped))
            view.addSubview($0)
        }
        cornerRadiusesPageItem.apply {
            $0.bind(withTitle: LandingPageItems.CornerRadiuses.title, withImage: LandingPageItems.CornerRadiuses.image)
            $0.setOnTapListener(target: self, action: #selector(onCornerRadiusesPageItemTapped))
            view.addSubview($0)
        }
        letterSpacingsPageItem.apply {
            $0.bind(withTitle: LandingPageItems.LetterSpacings.title, withImage: LandingPageItems.LetterSpacings.image)
            $0.setOnTapListener(target: self, action: #selector(onLetterSpacingsPageItemTapped))
            view.addSubview($0)
        }
    }

    private func setConstraints() {
        spacingsPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        textSizesPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        cornerRadiusesPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(spacingsPageItem.safeAreaLayoutGuide.snp.bottom).offset(VerticalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        letterSpacingsPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(textSizesPageItem.safeAreaLayoutGuide.snp.bottom).offset(VerticalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
    }
    
    @objc private func onSpacingsPageItemTapped() {
        pushViewController(SpacingsViewController())
    }
    
    @objc private func onTextSizesPageItemTapped() {
        pushViewController(TextSizesViewController())
    }
    
    @objc private func onCornerRadiusesPageItemTapped() {
        pushViewController(CornerRadiusesViewController())
    }
    
    @objc private func onLetterSpacingsPageItemTapped() {
        pushViewController(LetterSpacingsViewController())
    }
}
