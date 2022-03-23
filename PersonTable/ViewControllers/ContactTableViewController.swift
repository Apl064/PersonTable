//
//  ContactTableViewController.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/22/22.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    let getPerson = Person.getPerson()
   
    override func viewDidLoad() {
        print(getPerson)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        getPerson.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        getPerson[section].contact.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContact", for: indexPath)
        cell.textLabel?.text = "\(getPerson[indexPath.row].contact.map{$0})"
        
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(getPerson[section].firstName) \(getPerson[section].secondName)"
    }
   

}
