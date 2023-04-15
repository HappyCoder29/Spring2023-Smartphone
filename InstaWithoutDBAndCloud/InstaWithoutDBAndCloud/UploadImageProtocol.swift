//
//  ProtocolUploadImage.swift
//  InstaWithoutDBAndCloud
//
//  Created by Drillmaps on 15/04/23.
//

import Foundation
import UIKit

protocol UploadImageProtocol{
    
    func uploadedImageDelegate(img : UIImage, locationImg: String, titleImg: String)
    
}
