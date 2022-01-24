//
//  Person.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

class DataManager {
    static let names = [
        "Ivan",
        "Aleksandr",
        "Aleksei",
        "Igor",
        "Natalia",
        "Anastasia",
        "Uliana",
        "Aleksandra",
        "John",
        "Aaron",
        "Tim",
        "Ted",
        "Steven",
        "Arthur"
    ]

    static let surnames = [
        "Sokol",
        "Oryol",
        "Solovey",
        "Sova",
        "Zayac",
        "Medved",
        "Lisa",
        "Volk",
        "Smith",
        "Dow",
        "Isaacson",
        "Pennyworth",
        "Jankins",
        "Black"
    ]

    static let phoneNumbers = Array(repeating: Int.random(in: 100_000_000...999_999_999), count: 14)

    static let emails = [
        "myopre@mail.ru",
        "neemed@icloud.com",
        "nitone@yandex.ru",
        "postad@gmail.com",
        "rightcl@mail.ru",
        "shangbook@icloud.com",
        "spunkysunset@yandex.ru",
        "thegamm@gmail.com",
        "apenguinblog@mail.ru",
        "autopol@icloud.com",
        "aveden@yandex.ru",
        "beachem@gmail.com",
        "beplay@mail.ru",
        "bleminn@icloud.com",
    ]
}

struct Person {
    let name: String
    let surname: String

    var fullName: String {
        "\(name) \(surname)"
    }

    let phoneNumber: Int
    let email: String

    func getPersons() -> [Person] {
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
