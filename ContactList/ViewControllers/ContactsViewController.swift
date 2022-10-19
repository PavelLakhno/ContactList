//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Павел Лахно on 19.10.2022.
//

import UIKit

class ContactsViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - TableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactIdentifier", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone.fill")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray.fill")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
