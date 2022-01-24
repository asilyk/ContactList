//
//  TableViewController.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    //MARK: - Public Properties
    var persons: [Person]!

    //MARK: - Table View Data Source
    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personFullNameID", for: indexPath)

        var content = cell.defaultContentConfiguration()

        let person = persons[indexPath.row]

        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }

    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        guard let detailedInfoVC = segue.destination as? DetailedInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }

        detailedInfoVC.person = persons[indexPath.row]
    }
}
