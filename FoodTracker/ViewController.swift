//
//  ViewController.swift
//  FoodTracker
//
//  Created by Robert McBryde on 22/06/2015.
//  Copyright © 2015 Robert McBryde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
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
    
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        photoImageView.image = selectedImage
        // dismiss the picker 
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // MARK: Actions
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default text"
    }

    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        // Hide the keyboard if user tabps image while typing
        nameTextField.resignFirstResponder()
        
        // UIImagePickerController lets us pick media from phone
        let imagePickerController = UIImagePickerController()
        // ensure we are notified when image is selected by being the
        // UIImagePickerControllerDelegate delegate
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)

    }

}

