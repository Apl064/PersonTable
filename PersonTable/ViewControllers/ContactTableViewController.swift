//
//  ContactTableViewController.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/22/22.
//

import UIKit

class ContactTableViewController: UITableViewController {

    //MARK: - Properties
    var getPersons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        getPersons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContact", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = getPersons[indexPath.row].phone
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = getPersons[indexPath.row].email
        }
        
        cell.contentConfiguration = content
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        getPersons[section].fullName
    }
}
