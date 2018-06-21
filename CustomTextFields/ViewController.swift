//
//  ViewController.swift
//  CustomTextFields
//
//  Created by Sai Venkata Pranay Boggarapu on 6/16/18.
//  Copyright © 2018 Sai Venkata Pranay Boggarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let currencyFormatterDelegate = CurrencyFormatterTextDelegate()
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var currencyField: UITextField!
    @IBOutlet weak var lockableField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.zipCodeField.delegate = zipCodeDelegate
        self.currencyField.delegate = currencyFormatterDelegate
    }
    
    
    @IBAction func valueChanged(_ sender: UISwitch) {
        if !sender.isOn {
            lockableField.isEnabled = false
        } else {
            lockableField.isEnabled = true
        }
    }
    
}

