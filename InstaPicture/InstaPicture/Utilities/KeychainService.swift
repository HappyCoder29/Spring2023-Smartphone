//
//  KeychainService.swift
//  InstaPicture
//
//  Created by Drillmaps on 08/04/23.
//

import Foundation
import KeychainSwift

class KeychainService {
    var _keyChain = KeychainSwift()
    
    var keyChain : KeychainSwift{
        get {
            return _keyChain
        }
        set {
            _keyChain = newValue
        }
    }
}
