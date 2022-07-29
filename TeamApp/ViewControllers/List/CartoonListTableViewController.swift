//
//  ListTableViewController.swift
//  TeamApp
//
//  Created by Daniil Lebedev on 27.07.2022.
//

import UIKit

class CartoonListTableViewController: UITableViewController {

    var cartoonList: [Cartoon]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 130
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cartoonList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCartoon", for: indexPath)
        let cartoon = cartoonList[indexPath.row]
    
        var content = cell.defaultContentConfiguration()
        var backgroundConfig = UIBackgroundConfiguration.listPlainCell()

        content.text = cartoon.title
        content.textProperties.color = .white
        content.textProperties.font = UIFont.boldSystemFont(ofSize: 17)
        
        backgroundConfig.image = UIImage(named: cartoon.cover)
    
        
        cell.contentConfiguration = content
        cell.backgroundConfiguration = backgroundConfig
        return cell
    }
 
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.cartoon = cartoonList[indexPath.row]
    }

}
