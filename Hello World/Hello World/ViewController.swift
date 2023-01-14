//
//  ViewController.swift
//  Hello World
//
//  Created by Drillmaps on 14/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am inside viewDidLoad() function")
    }

    @IBAction func pressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        lblExample.text = "Button was pressed"
    }
    
}

