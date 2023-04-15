//
//  UploadImageViewController.swift
//  InstaWithoutDBAndCloud
//
//  Created by Drillmaps on 15/04/23.
//

import UIKit

class UploadImageViewController: UIViewController {

    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    var uploadProtocol: UploadImageProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func uploadAction(_ sender: Any) {
        
        guard let img = imgView.image else {return}
        guard let location = lblLocation.text else {return}
        guard let title = txtTitle.text else {return}
        
        uploadProtocol?.uploadedImageDelegate(img: img, locationImg: location, titleImg: title)
        
        
    }
    
}
