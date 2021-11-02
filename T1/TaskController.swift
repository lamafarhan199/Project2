//
//  TaskController.swift
//  T1
//
//  Created by لمى فرحان on 26/03/1443 AH.
//

import UIKit
class TaskController: UITableViewController {
    var list = List()
    var userSelectedCellIndex : Int!
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    override func viewDidLoad() {

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list.items[indexPath.row].title
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User select: \(indexPath.row)")
        userSelectedCellIndex = indexPath.row
        performSegue(withIdentifier: "editSegue", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            list.items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
        tableView.reloadData()
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue" {
            let addVC = segue.destination as! AddViewController
            addVC.list = list
        } else if segue.identifier == "editSegue" {
            let editVC = segue.destination as! UpdateViewController
            editVC.list = list
            editVC.selectedIndex = userSelectedCellIndex
        }
    }
}
