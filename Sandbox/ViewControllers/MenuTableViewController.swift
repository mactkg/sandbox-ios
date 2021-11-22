//
//  ViewController.swift
//  Sandbox
//
//  Created by Kenta Hara on 2021/11/20.
//

import UIKit

class MenuTableViewController: UITableViewController {
    let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = dataSource.createViewController(for: indexPath)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: Cell
class MenuTableViewItemCell: UITableViewCell {
    override func prepareForReuse() {
        self.textLabel?.text = ""
    }
    
    func configure(label: String) {
        self.textLabel?.text = label
    }
}

// MARK: DataSource
struct Section {
    let cells: [Item]
}

struct Item {
    let desc: String
    let createVC: () -> UIViewController
}

class DataSource: NSObject, UITableViewDataSource {
    let layout: [Section] = [
        Section(cells: [
            Item(desc: "Test") {
                return TestStoryboardViewController.create()
            },
            Item(desc: "Test") {
                return TestStoryboardViewController.create()
            },
            Item(desc: "Test") {
                return TestStoryboardViewController.create()
            },
            Item(desc: "Test") {
                return TestStoryboardViewController.create()
            }
        ])
    ]
    
    func createViewController(for indexPath: IndexPath) -> UIViewController {
        let data = getItem(for: indexPath)
        return data.createVC()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return layout[section].cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = getItem(for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewItemCell", for: indexPath) as! MenuTableViewItemCell
        cell.configure(label: data.desc)
        
        return cell
    }
    
    private func getItem(for indexPath: IndexPath) -> Item {
        return layout[indexPath.section].cells[indexPath.row]
    }
}
