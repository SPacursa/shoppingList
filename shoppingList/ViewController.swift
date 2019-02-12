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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
   
    @IBAction func addNewItemButtonPressed(_ sender: UIBarButtonItem) {
   
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }
}

    
