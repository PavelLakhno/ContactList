//
//  TabBarController.swift
//  ContactList
//
//  Created by Павел Лахно on 19.10.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    private let persons = Person.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }

    private func setupControllers() {
        if let controllers = viewControllers {
            for controller in controllers {
                if let personsVC = controller as? PersonsViewController {
                    personsVC.persons = persons
                } else if let contactsVC = controller as? ContactsViewController {
                    contactsVC.persons = persons
                }
            }
        }
    }
}
