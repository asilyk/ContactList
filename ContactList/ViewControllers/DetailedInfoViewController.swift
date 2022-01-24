//
//  DetailedInfoViewController.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

import UIKit

class DetailedInfoViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet var personFullNameNavigationItem: UINavigationItem!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!

    //MARK: - Public Properties
    var person: Person!

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        personFullNameNavigationItem.title = person.fullName
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
