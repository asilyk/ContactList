//
//  Person.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

struct Person {
    let name: String
    let surname: String

    let phoneNumber: Int
    let email: String

    var fullName: String {
        "\(name) \(surname)"
    }

    static func getPersons() -> [Person] {
        var persons: [Person] = []
        let dataManager = DataManager.shared

        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        let emails = dataManager.emails.shuffled()

        let iterationCount = min(names.count, surnames.count, phoneNumbers.count, emails.count)

        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )

            persons.append(person)
        }

        return persons
    }
}
