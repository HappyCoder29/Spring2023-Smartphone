//
//  ViewController.swift
//  ProtocolsAndDelegateExample
//
//  Created by Drillmaps on 18/02/23.
//

import UIKit

class ViewController: UIViewController, SetStatusDelegate {
   
    
   
    /*
     1. Create a swift file which has a protocol.
     2. This protocol will have the functions that would have to be implemented when someone conforms to it
     3. In the second VC we will add an optional variable for the protocol
     4. In the second VC whenever an action is taken we will call the protocol function
     5. In the first VC conform to the protocol
     6. You would have to implement the function defined int he protocol
     7. In the function do your implementation (Uidate UI etc.)
     8. when we are going to second VC, start listening to the second VC's variable defined in step 3
    
     */

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lblStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "segueSecondVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.setStatusDelegate = self
            guard let name = txtName.text else {return}
            secondVC.name = name
        }
    }

    func setStatus(status: String) {
        lblStatus.text = "My Status is : \(status)"
        print("I am here")
    }

    
    
}

