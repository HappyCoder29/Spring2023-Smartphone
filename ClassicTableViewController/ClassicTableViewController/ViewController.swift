//
//  ViewController.swift
//  ClassicTableViewController
//
//  Created by Drillmaps on 11/02/23.
//

import UIKit


/*
 1. Add Table view on the View controller, Streach it across the entire screen
 2. Add a table view cell to the Table view above put name of "cell" in reusableIdentifier section
 3. Conform to the protocols UITableViewDelegate, UITableViewDataSource
 4. Add Stub functions numberOfRowsInSection and cellForRowAt
 5. Add Tableview.delegate and tableView.dataSource = self in viewDidLoad
 6. Add an array which will contain values to be displayed
 7. In the numberOfRowsInSection return the array count
 8. In the cellForRowAt function add dequeueReusableCell function and populate the cell
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let friends = ["Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark","Ashish", "Tom", "Bill", "Peter", "Sara","Mark"]

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friends[indexPath.row]
        
        return cell
    }
    
    


}

