import Foundation
import UIKit
import SnapKit

class HorizontalSpacingsViewController : BaseViewController, UITableViewDelegate, UITableViewDataSource {
    private let tableView: UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.HorizontalSpacings
        initializeViews()
        setConstraints()
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        Dimens.HorizontalTableViewCellHeight.cgFloat
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        HorizontalSpacingsItems.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HorizontalCellView.IDENTIFIER) as! HorizontalCellView
        let position = indexPath.row
        cell.setHorizontalSpacingItem(HorizontalSpacingsItems.allCases[position])
        return cell
    }
    
    private func initializeViews() {
        view.backgroundColor = .white
        tableView.apply {
            $0.delegate = self
            $0.dataSource = self
            $0.removeEmptyCellDividerLines()
            $0.rowHeight = UITableView.automaticDimension
            $0.estimatedRowHeight = Dimens.HorizontalTableViewCellHeight.cgFloat
            $0.register(HorizontalCellView.self, forCellReuseIdentifier: HorizontalCellView.IDENTIFIER)
            view.addSubview($0)
        }
    }

    private func setConstraints() {
        tableView.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(VerticalSpacings.m)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(HorizontalSpacings.m)
            make.right.equalTo(view.safeAreaLayoutGuide).offset(-HorizontalSpacings.m)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-VerticalSpacings.m)
        }
    }
}
