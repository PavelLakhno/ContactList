//
//  PersonsViewController.swift
//  ContactList
//
//  Created by Павел Лахно on 17.10.2022.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    private var persons = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = persons[indexPath.row].fullName
        
        return cell
    }
}



