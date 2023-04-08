//
//  AddPictureViewController.swift
//  InstaPicture
//
//  Created by Drillmaps on 08/04/23.
//

import UIKit
import FirebaseStorage
import FirebaseAuth

class AddPictureViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var txtTitle: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func takeAPicAction(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Take a picture", message: "Something", preferredStyle: .alert)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default){ action in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerController.SourceType.camera;
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
            
        }
        let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default){ action in
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary;
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true)
            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel){ action in
            print("Cancel")
            
        }
        
        actionSheet.addAction(cameraAction)
        actionSheet.addAction(photoLibraryAction)
        actionSheet.addAction(cancel)
        
        self.present(actionSheet, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imgView.image = image
        }
        
        picker.dismiss(animated: true)
    }
    
    
    @IBAction func uploadPicture(_ sender: Any) {
        // Get a reference to the storage service using the default Firebase App
        let ref = Storage.storage().reference()
        
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let identifier = UUID()
        // Create a storage reference from our storage service
        let storageRef = ref.child("\(uid)/Images/\(identifier).jpg")
        guard let image = imgView.image else {return}
        guard let data = image.jpegData(compressionQuality: 1.0) else { return  }
        
        let uploadTask = storageRef.putData(data, metadata: nil) { (metadata, error) in
            guard let metadata = metadata else {
                // Uh-oh, an error occurred!
                return
            }
            // Metadata contains file metadata such as size, content-type.
            let size = metadata.size
            // You can also access to download URL after upload.
            storageRef.downloadURL { (url, error) in
                guard let downloadURL = url else {
                    // Uh-oh, an error occurred!
                    return

                }
                // Put this download URL in the DB
                print(downloadURL)

            }
            
        }
        
            
    }
    
}
