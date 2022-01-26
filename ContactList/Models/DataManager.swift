//
//  DataManager.swift
//  ContactList
//
//  Created by Alexander on 24.01.2022.
//

class DataManager {
    let names = [
        "Liam", "Olivia", "Noah", "Emma",
        "Oliver", "Ava", "Elijah", "Charlotte",
        "William", "Sophia", "James", "Amelia",
        "Benjamin", "Isabella", "Lucas", "Mia",
        "Henry", "Evelyn", "Alexander", "Harper"
    ]

    let surnames = [
        "Smith", "Johnson", "Williams", "Brown",
        "Jones", "Garcia", "Miller", "Davis",
        "Rodriguez", "Martinez", "Hernandez", "Lopez",
        "Gonzalez", "Wilson", "Anderson", "Thomas",
        "Taylor", "Moore", "Jackson", "Martin"
    ]

    let phoneNumbers = (0...20).map { _ in Int.random(in: 100_000_000...999_999_999) }

    let emails = [
        "myopre@mail.ru", "neemed@icloud.com",
        "nitone@yandex.ru", "postad@gmail.com",
        "rightcl@mail.ru", "shangbook@icloud.com",
        "spunkysunset@yandex.ru", "thegamm@gmail.com",
        "apenguinblog@mail.ru", "autopol@icloud.com",
        "aveden@yandex.ru", "beachem@gmail.com",
        "beplay@mail.ru", "bleminn@icloud.com",
        "qwerty@yandex.ru", "anekovich@gmail.com",
        "swifty@mail.ru", "bokko@icloud.com",
        "gogog@yandex.ru", "zxcas@gmail.com"
    ]
}
