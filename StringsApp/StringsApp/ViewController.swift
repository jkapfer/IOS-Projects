//
//  ViewController.swift
//  StringsApp
//
//  Created by Kapfer,Jacob M on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SubmitButtonClicked(_ sender: Any) {
    // var nameString:String = ""
        
    //        var nameString = nameOutlet.text![(nameOutlet.text!.startIndex...nameOutlet.text!.index(nameOutlet.text!.startIndex, offsetBy: 3))]
        displayLabelOutlet.text = ("\(nameOutlet.text![(nameOutlet.text!.startIndex...nameOutlet.text!.index(nameOutlet.text!.startIndex, offsetBy: 3))])")
    }
    
}

