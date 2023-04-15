//
//  SecondViewController.swift
//  ProtocolsAndDelegateExample
//
//  Created by Drillmaps on 18/02/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    @IBOutlet weak var txtStatus: UITextField!
    var setStatusDelegate: SetStatusDelegate?
    
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text = "Welcome \(name)"
    }
    
    @IBAction func setStatusAction(_ sender: Any) {
        guard let status = txtStatus.text else {return}
        
        // Call the protocol function
        setStatusDelegate?.setStatus(status: status)
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
}
