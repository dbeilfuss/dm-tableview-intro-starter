//
//  ExpensesViewController.swift
//  DMTableViewIntro
//
//  Created by David Ruvinskiy on 4/4/23.
//

import UIKit

class ExpensesViewController: UIViewController {
    
    @IBOutlet weak var budgetTableView: UITableView!
    
    let expenses = ["Rent", "Groceries", "Utilities", "Transportation", "Entertainment", "Clothing", "Eating Out", "Travel", "Insurance", "Phone Bill"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        budgetTableView.dataSource = self
        budgetTableView.register(UITableViewCell.self, forCellReuseIdentifier: "budgetCell")
    }
    
}

extension ExpensesViewController: UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "budgetCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = expenses[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    
}
