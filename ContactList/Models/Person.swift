//
//  Person.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

struct Person {
    let name: String
    let surname: String

    var fullName: String {
        "\(name) \(surname)"
    }

    let phoneNumber: Int
    let email: String

    static func getPersons() -> [Person] {
        var persons: [Person] = []

        let names = DataManager.names.shuffled()
        let surnames = DataManager.surnames.shuffled()
        let phoneNumbers = DataManager.phoneNumbers.shuffled()
        let emails = DataManager.emails.shuffled()

        for index in 0..<names.count {
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
