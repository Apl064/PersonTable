//
//  PersonTableViewController.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/21/22.
//

import UIKit

class PersonTableViewController: UITableViewController {

    //MARK: - Properties
    var getPersons: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        getPersons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPerson", for: indexPath)
        
        let fullName = getPersons[indexPath.row].fullName
        var content = cell.defaultContentConfiguration()
        content.text = fullName
        cell.contentConfiguration = content
      
        return cell
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? InfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personInfoVC.fullName = getPersons[indexPath.row].fullName 
        personInfoVC.email = "E-Mail: \(getPersons[indexPath.row].email)"
        personInfoVC.phone = "Phone: \(getPersons[indexPath.row].phone)"
    }
}
