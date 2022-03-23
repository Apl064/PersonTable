//
//  TabBarViewController.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/23/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    //MARK: - Private Properties
    private var getPersons = Person.getPerson()
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        toDestination()
    }

    // MARK: - Navigation
    private func toDestination() {
        guard let navControllers = viewControllers else { return }
        
        for navController in navControllers {
            guard let navigationVC = navController as? UINavigationController else { return }
            if let personTableVC = navigationVC.topViewController as? PersonTableViewController {
                personTableVC.getPersons = getPersons
            } else if let contactVC = navigationVC.topViewController as? ContactTableViewController {
                contactVC.getPersons = getPersons
            }
        }
    }
}
