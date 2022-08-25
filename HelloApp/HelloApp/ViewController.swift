//
//  ViewController.swift
//  HelloApp
//
//  Created by Kapfer,Jacob M on 8/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButtonClicked(_ sender: UIButton) {
        //Read the text from the text field
        var name = nameOutlet.text!
        
        //Assign the text to the label
        displayLabelOutlet.text = "Hello, \(name)!"
    }
    
}

