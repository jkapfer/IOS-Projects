//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Kapfer,Jacob M on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    var operand1:Double = -1.1
    var operand2:Double = -1.1
    var calcOperator:Character = " "
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
 
    @IBAction func button8Clicked(_ sender: Any) {
        displayLabel.text! += "8"
        if(operand1 == -1.1){
            operand1 = 8
        }
        else{
            operand2 = 8
        }
    }
    
    
    
    @IBAction func button9Clicked(_ sender: Any) {
        displayLabel.text! += "9"
        if(operand2 == -1.1){
            operand2 = 9
        }
        else{
            operand1 = 9
        }
    }
    
    @IBAction func buttonPlusClicked(_ sender: Any) {
        displayLabel.text! += "+"
        //As the user clicks the plus symbol, we need to assign the calcOperator to +
        if(calcOperator == " "){
            calcOperator = "+"
        }
        
    }
    
    @IBAction func buttonEqualsClicked(_ sender: Any) {
        displayLabel.text! += "="
        if(calcOperator == "+"){
            displayLabel.text! += "\(operand1+operand2)"
        }
    }
    
    


}

