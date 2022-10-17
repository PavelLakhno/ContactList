//
//  Person.swift
//  ContactList
//
//  Created by Павел Лахно on 17.10.2022.
//

import Foundation

struct Person {
    
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersonList() -> [Person] {
        
        let dataManager = DataManager()
        var persons: [Person] = []
        
        let firstNames = dataManager.firstNames.shuffled()
        let lastNames = dataManager.lastNames.shuffled()
        let emails = dataManager.emails.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                email: emails[index],
                phoneNumber: phoneNumbers[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
