//
//  UploadImageViewController.swift
//  InstaWithoutDBAndCloud
//
//  Created by Drillmaps on 15/04/23.
//

import UIKit
import RealmSwift

class UploadImageViewController: UIViewController {

    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    var uploadProtocol: UploadImageProtocol?
    let realm = try! Realm()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func uploadAction(_ sender: Any) {
        
        guard let img = imgView.image else {return}
        guard let location = lblLocation.text else {return}
        guard let title = txtTitle.text else {return}
        
        let imageData: Data? = img.pngData()
        
        let imgData: InstaImageCelldata = InstaImageCelldata()
        imgData.title = title
        imgData.location = location
        imgData.Image = imageData
       
        // Add to the Realm
        do {
            try realm.write {
                realm.add(imgData, update: .modified)
            }
        } catch let error as NSError {
            print("Unable to add values to the DB " + error.localizedDescription)
        }
        uploadProtocol?.uploadedImageDelegate(img: img, locationImg: location, titleImg: title)
        
        
    }
    
}
