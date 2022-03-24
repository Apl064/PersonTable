//
//  Persona.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/22/22.
//

struct Person {
    let firstName: String
    let secondName: String
    let email: String
    let phone: String
    var fullName: String {
        "\(firstName) \(secondName)"
    }

    static func getPerson() -> [Person] {
        let dm = DataManager.shared
        var persons: [Person] = []
        
        let firstNames = dm.firstNames.shuffled()
        let secondNames = dm.secondNames.shuffled()
        let emails = dm.emails.shuffled()
        let phones = dm.phones.shuffled()
        
        for index in 0..<dm.firstNames.count {
            let person = Person(firstName: firstNames[index],
                                secondName: secondNames[index],
                                email: emails[index],
                                phone: phones[index]
                        )
            persons.append(person)
        }
        return persons
    }
}


