//
//  ViewController.swift
//  UITestSample
//
//  Created by Drillmaps on 15/04/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblStatus: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: Any) {
        guard let email = txtEmail.text else {return}
        guard let password = txtPassword.text else {return}
        
        if(email != "ashish@test.com" || password != "password"){
            lblStatus.isHidden = false
            lblStatus.text = "Please enter valid email/password"
            return
        }
        
        lblStatus.isHidden = true

        performSegue(withIdentifier: "segueLogin", sender: self)
        
    }
    
}

