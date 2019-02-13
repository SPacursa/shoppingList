//
//  ViewController.swift
//  shoppingList
//
//  Created by Sean Pacursa on 2/8/19.
//  Copyright © 2019 John Hersey Highschool. All rights reserved.
//
// Sean Pacursa
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var newItemTextField: UITextField!
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        let item1 = Item(name: "milk")
        let item2 = Item(name: "eggs")
        items = [item1, item2]
        let item3 = Item(name: "bread")
        items.append(item3)
    }
   
    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
        if let newItemName = newItemTextField.text, newItemName != "" {
            let newItem = Item(name: newItemName)
            items.append(newItem)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
       let currentItemName = items[indexPath.row].name
        cell.textLabel?.text = currentItemName
        return cell
        } else {
            return UITableViewCell()
        }
    }
}

    
