//
//  InfoViewController.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/23/22.
//

import UIKit

class InfoViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    //MARK: - Properties
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailLabel.text = person.email
        phoneLabel.text = person.phone
    }
}
