//
//  DailPadViewController.swift
//  DailPad
//
//  Created by MAC on 21/03/2022.
//  Copyright © 2022 MAC. All rights reserved.
//

import UIKit

class DailPadViewController: UIViewController {
    
    var verifyEmail = "ade@gmail.com"
    var verifyPin = ""
    var digitTextFields: [UITextField] = []
    
    
    @IBOutlet var verifyTokenFromEmail: UILabel!
    
    @IBOutlet var txt1: UITextField!
    @IBOutlet var txt2: UITextField!
    @IBOutlet var txt3: UITextField!
    @IBOutlet var txt4: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txt1.delegate = self
        txt2.delegate = self
        txt3.delegate = self
        txt4.delegate = self
        
        verifyTokenFromEmail.text = "Please input the verification code sent to\(verifyEmail)"
        
        digitTextFields = [txt1, txt2, txt3, txt4]
        txt1.becomeFirstResponder()
        
    }
    
    @IBAction func dailButtons(_ sender: UIButton) {
        
        if let dailNumber = sender.currentTitle {
            verifyPin.append(dailNumber)
            //            firstDigitTextField.text = verifyPin
            for digitTextField in digitTextFields {
                digitTextField.text = verifyPin
            }
            
        }
        
    }
    
    @IBAction func deleteButton(_ sender: UIButton) {
        print("ade", sender.currentTitle)
        //Clear the digit if box is tapped on
        
        if digitTextFields.count >= 1{
            
            digitTextFields.removeLast()
            
        }
    }
    
    
}

//extension DailPadViewController: UITextFieldDelegate {
//    
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        guard let characterCount = textField.text?.count else { return false }
//        return characterCount < digitTextFields.count || string == ""
//    }
//}
