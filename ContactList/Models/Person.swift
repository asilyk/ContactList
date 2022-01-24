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

        let names: Set<String> = [
            "Ivan",
            "Aleksandr",
            "Aleksei",
            "Igor",
            "Natalia",
            "Anastasia",
            "Uliana",
            "Aleksandra"
        ]

        let surnames: Set<String> = [
            "Sokol",
            "Oryol",
            "Solovey",
            "Sova",
            "Zayac",
            "Medved",
            "Lisa",
            "Volk"
        ]

        for (name, surname) in zip(names, surnames) {
            let phoneNumber = Int.random(in: 100_000_000...999_999_999)
            let email = "\(name.lowercased())_\(surname.lowercased())@mail.com"

            let person = Person(
                name: name,
                surname: surname,
                phoneNumber: phoneNumber,
                email: email
            )

            persons.append(person)
        }

        return persons
    }
}
