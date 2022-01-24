//
//  DetailedPersonsListViewController.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

import UIKit

class DetailedPersonsListViewController: UITableViewController {
    //MARK: - Public Properties
    var persons: [Person] = []

    //MARK: - Table View Data Source
    override func numberOfSections(in _: UITableView) -> Int {
        persons.count
    }

    override func tableView(_: UITableView, titleForHeaderInSection: Int) -> String? {
        persons[titleForHeaderInSection].fullName
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailID", for: indexPath)
        var content = cell.defaultContentConfiguration()

        let person = persons[indexPath.section]

        if indexPath.row == 0 {
            content.text = String(person.phoneNumber)
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }

        cell.contentConfiguration = content

        return cell
    }
}
