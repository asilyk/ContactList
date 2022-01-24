//
//  TabBarController.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

import UIKit

class TabBarController: UITabBarController {
    //MARK: - Private Properties
    private let persons = Person.getPersons()

    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        passPersonsToLists()
    }

    //MARK: - Private Methods
    private func passPersonsToLists() {
        guard let viewControllers = viewControllers else { return }

        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }

            if let personListVC = navigationVC.topViewController as? PersonsListViewController {
                personListVC.persons = persons
            }

            if let detailedPersonListVC = navigationVC.topViewController as? DetailedPersonsListViewController {
                detailedPersonListVC.persons = persons
            }
        }
    }
}
