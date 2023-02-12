//
//  TableViewController.swift
//  TableViewControllerExample
//
//  Created by Drillmaps on 11/02/23.
//

import UIKit


/*
 1. Remove View controller from storybaord and remove the code
 2. Add a TableViewController to the storyboard and add "cell" as reusable identifier
 3. Make the tableview as initial VC
 4. add TableViewController Code file and map UI and Code file
 5. remove boiler plate code and have 2 functions numberOfRowsInSection and cellForRowAt
 6. Add array and return arr.count in numberOfRowsInSection
 7. Return the cell (configure cell to use the array)
 
 */

class TableViewController: UITableViewController {
    
    let friends = ["Ashish", "Tom", "Bill", "Peter", "Mark"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = friends[indexPath.row]

        return cell
    }
    


}
