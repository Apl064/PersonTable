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
}
