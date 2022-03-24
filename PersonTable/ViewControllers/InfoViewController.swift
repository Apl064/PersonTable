//
//  InfoViewController.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/23/22.
//

import UIKit

class InfoViewController: UIViewController {

    //MARK: - IB Outlets
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    //MARK: - Properties
    var fullName: String!
    var email: String!
    var phone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = fullName
        emailLabel.text = email
        phoneLabel.text = phone
    }
}
