//
//  tableView.swift
//  generalSetting-homework
//
//  Created by Siwakorn Phanitphichetvong on 13/6/2568 BE.
//

import Foundation
import UIKit

class tableView: UIViewController {

    @IBOutlet weak var tableView: UITableView!

//    let items = ["Apple1", "Apple2", "Apple3", "Apple4", "Apple5", "Apple6", "Apple7", "Apple8", "Apple9", "Apple10","Apple11", "Apple12", "Apple13", "Apple14", "Apple15","Apple16", "Apple17", "Apple18", "Apple19", "Apple20"]
    let itemsOdd = (1...100).filter { $0 % 2 != 0 }.map { "Apple\($0)" }
    let itemsEven = (100...200).filter { $0 % 2 == 0 }.map { "Apple\($0)" }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // ลงทะเบียน xib ของเซลล์
        let nib = UINib(nibName: "TableViewContent", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "TableViewContent")

        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension tableView: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return max(itemsOdd.count, itemsEven.count) * 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewContent", for: indexPath) as? tableViewContent else {
            return UITableViewCell()
        }

        let row = indexPath.row / 2
        if indexPath.row % 2 == 0 {
            if row < itemsOdd.count {
                cell.configure(with: itemsOdd[row])
            }
        } else {
            if row < itemsEven.count {
                cell.configure(with: itemsEven[row])
            }
        }

        return cell
    }
}

// MARK: - UITableViewDelegate (optional)
extension tableView: UITableViewDelegate {}
