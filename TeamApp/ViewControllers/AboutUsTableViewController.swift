//
//  AboutUsTableViewController.swift
//  TeamApp
//
//  Created by Дмитрий Дуров on 28.07.2022.
//

import UIKit

class AboutUsTableViewController: UITableViewController {
    
    let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTeam", for: indexPath)
        var content =  cell.defaultContentConfiguration()
        let person = person[indexPath.row]
        
        content.text = person.fullName
        content.secondaryText = person.position
        content.image = UIImage(named: person.photo)
        content.imageProperties.cornerRadius = 10
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personInfoVC.person = person[indexPath.row]
    }
}
