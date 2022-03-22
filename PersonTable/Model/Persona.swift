//
//  Persona.swift
//  PersonTable
//
//  Created by Pavel Metelin on 3/22/22.
//

struct Person {
    let firstName: String
    let secondName: String
    let contact: [Contact]
    
    static func getPerson() -> [Person] {
        let dm = DataManager.shared
        var persons: [Person] = []
        
        let firstNames = dm.firstNames.shuffled()
        let secondNames = dm.secondNames.shuffled()
//        let contacts = Contact.getContact()
        
        for index in 0..<firstNames.count {
            let person = Person(firstName: firstNames[index],
                                secondName: secondNames[index],
                                contact: Contact.getContact())
            persons.append(person)
        }
        return persons
    }
}

struct Contact {
    let email: String
    let phone: String
    
    static func getContact() -> [Contact] {
        let dm = DataManager.shared
        var contacts: [Contact] = []
        
        let emails = dm.emails.shuffled()
        let phones = dm.phones.shuffled()
        
        for index in 0..<emails.count {
            let contact = Contact(email: emails[index], phone: phones[index])
            contacts.append(contact)
        }
        return contacts
    }
}

