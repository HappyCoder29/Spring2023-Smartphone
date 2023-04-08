//
//  StringUtilities.swift
//  InstaPicture
//
//  Created by Drillmaps on 08/04/23.
//

import Foundation

extension String {
    
    var isEmail : Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
    
    var isValidPassword : Bool {
        let passwordRegEx = NSPredicate(format: "SELF MATCHES %@ ", "^(?=.*[a-z])(?=.*[$@$#!%*?&]).{6,}$")
        return passwordRegEx.evaluate(with: self)
    }
}
