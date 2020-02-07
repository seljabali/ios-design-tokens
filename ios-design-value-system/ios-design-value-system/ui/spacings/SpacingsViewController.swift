import Foundation

class SpacingsViewController: BaseViewController {
    
    private let verticalSpacingPageItem = LandingPageItem()
    private let horizontalSpacingsPageItem = LandingPageItem()
    private let paddingsPageItem = LandingPageItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.Spacings
        initializeViews()
        setConstraints()
    }

    private func initializeViews() {
        self.view.backgroundColor = .white
        verticalSpacingPageItem.apply {
            $0.setTitle(Strings.VerticalSpacings)
            $0.setOnTapListener(target: self, action: #selector(onVerticalSpacingsPageItemTapped))
            view.addSubview($0)
        }
        horizontalSpacingsPageItem.apply {
            $0.setTitle(Strings.HorizontalSpacings)
            $0.setOnTapListener(target: self, action: #selector(onHorizontalSpacingsPageItemTapped))
            view.addSubview($0)
        }
        paddingsPageItem.apply {
            $0.setTitle(Strings.Paddings)
            $0.setOnTapListener(target: self, action: #selector(onPaddingsSpacingsPageItemTapped))
            view.addSubview($0)
        }
    }

    private func setConstraints() {
        verticalSpacingPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        horizontalSpacingsPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
        paddingsPageItem.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(verticalSpacingPageItem.safeAreaLayoutGuide.snp.bottom).offset(HorizontalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.centerX)
        }
    }
    
    @objc private func onVerticalSpacingsPageItemTapped() {
        pushViewController(VerticalSpacingsViewController())
    }
    
    @objc private func onHorizontalSpacingsPageItemTapped() {
        pushViewController(HorizontalSpacingsViewController())
    }
    
    @objc private func onPaddingsSpacingsPageItemTapped() {
        pushViewController(PaddingsSpacingsViewController())
    }
}
