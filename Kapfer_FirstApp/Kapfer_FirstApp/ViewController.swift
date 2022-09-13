//
//  ViewController.swift
//  Kapfer_FirstApp
//
//  Created by Kapfer,Jacob M on 9/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!

    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBAction func onClickOfSubmit(_ sender: Any) {
        if(firstNameTextField.text!.count != 0 && lastNameTextField.text!.count != 0)
        {
        var fullName:String = ("Full Name: \(lastNameTextField.text!), \(firstNameTextField.text!)")
        
        var initials:String = ("Initials: \(firstNameTextField.text![(firstNameTextField.text!.startIndex)])\(lastNameTextField.text![(lastNameTextField.text!.startIndex)])")
        
        fullNameLabel.text = fullName
        initialsLabel.text = initials
        }
        else
        {
            fullNameLabel.text = "error: please enter names!"
        }
    }
    
    @IBAction func onClickOfReset(_ sender: Any) {
        fullNameLabel.text = ""
        initialsLabel.text = ""
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        firstNameTextField.becomeFirstResponder()
    }
    
}

