//
//  PersonsViewController.swift
//  ContactList
//
//  Created by Павел Лахно on 17.10.2022.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    var persons: [Person] = []

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let infoVC = segue.destination as? InfoViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        infoVC?.person = persons[indexPath.row]
    }
    
    // MARK: - TableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personIdentifier", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content
        return cell
    }
}



