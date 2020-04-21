import Foundation
import UIKit
import SnapKit

class LetterSpacingsViewController : BaseViewController, UITableViewDelegate, UITableViewDataSource {
    private let tableView: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Strings.LetterSpacings
        initializeViews()
        setConstraints()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        LetterSpacingItems.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LetterSpacingCellView.IDENTIFIER) as! LetterSpacingCellView
        let position = indexPath.row
        cell.setLetterSpacingItem(LetterSpacingItems.allCases[position])
        return cell
    }
    
    private func initializeViews() {
        view.backgroundColor = .white
        tableView.apply {
            $0.delegate = self
            $0.dataSource = self
            $0.removeEmptyCellDividerLines()
            $0.rowHeight = Dimens.LetterSpacingsCellViewHeight.cgFloat
            $0.register(LetterSpacingCellView.self, forCellReuseIdentifier: LetterSpacingCellView.IDENTIFIER)
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
