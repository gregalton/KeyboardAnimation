//
//  ViewController.swift
//  KeyboardAnimation
//
//  Created by Greg Alton on 7/13/19.
//  Copyright © 2019 Greg Alton. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoLabel: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginButton(_ sender: Any) {
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3) {
            self.view.center.y -= 100
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UIView.animate(withDuration: 0.3) {
            self.view.center.y += 100
        }
        textField.endEditing(true)
        return true
    }
    
}

