//
//  ZipCodeTextFieldTextDelegate.swift
//  CustomTextFields
//
//  Created by Sai Venkata Pranay Boggarapu on 6/16/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    override init() {
        super.init()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let existingText = textField.text! as NSString
        
        let newCharacters = NSCharacterSet(charactersIn: string)
        if !NSCharacterSet.decimalDigits.isSuperset(of: newCharacters as CharacterSet) {
            return false
        }
        
        let newLength = existingText.length + string.count - range.length
        return newLength <= 5
    }
    
}

