//
//  ViewController.swift
//  DiscountApp
//
//  Created by Kapfer,Jacob M on 9/13/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountOutlet: UITextField!
    @IBOutlet weak var discountOutlet: UITextField!
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func calcDiscount(_ sender: Any) {
        //Read the data and convert to Double
        var enteredAmount = Double(amountOutlet.text!)
        
        var enteredDiscRate = Double(discountOutlet.text!)
        
        var priceAfterDiscount =
        enteredAmount!-(enteredAmount!*enteredDiscRate!/100)
        
        labelOutlet.text = "Price after discount is $\(priceAfterDiscount)"
    }
    
    
}

