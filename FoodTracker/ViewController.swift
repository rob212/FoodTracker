//
//  ViewController.swift
//  FoodTracker
//
//  Created by Robert McBryde on 22/06/2015.
//  Copyright © 2015 Robert McBryde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // set this ViewController as the UITextFieldDelegate of my text field
        nameTextField.delegate = self
    }

    // MARK: UITextFieldDelefate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // hide the keyboard
        nameTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK: Actions
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default text"
    }


}

