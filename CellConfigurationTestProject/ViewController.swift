//
//  ViewController.swift
//  CellConfigurationTestProject
//
//  Created by user on 24.02.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testTableView: UITableView!
    
    var cellData: [String] = ["1","2","3","4","5","6","7","8","9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.register(TestCell.self, forCellReuseIdentifier: "TestCell")
        testTableView.dataSource = self
        testTableView.delegate = self
        testTableView.allowsMultipleSelection = true
    }
}

//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
                    withIdentifier: "TestCell",
                    for: indexPath
                )// as? TestCell ?? UITableViewCell()
        let customContentConfig = CustomListCellConfiguration(isOn: false)
        cell.contentConfiguration = customContentConfig
        return cell
    }
}

//MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
      let contextItem = UIContextualAction(style: .destructive, title: "Delete") {  (contextualAction, view, boolValue) in
        tableView.performBatchUpdates { [weak self] in
            tableView.deleteRows(at: [indexPath], with: .automatic)
            self?.cellData.remove(at: indexPath.row)
        }

      }
      let swipeActions = UISwipeActionsConfiguration(actions: [contextItem])

      return swipeActions
  }
}
