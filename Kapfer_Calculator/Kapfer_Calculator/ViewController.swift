//
//  ViewController.swift
//  Kapfer_Calculator
//
//  Created by Kapfer,Jacob M on 9/26/22.
//

import UIKit

class ViewController: UIViewController {
    //view outlets
    @IBOutlet weak var displayOutlet: UILabel!
    @IBOutlet weak var historyOutlet: UILabel!
    //button outlets
    @IBOutlet weak var clearBTN: UIButton!
    @IBOutlet weak var divBTN: UIButton!
    @IBOutlet weak var multBTN: UIButton!
    @IBOutlet weak var subBTN: UIButton!
    @IBOutlet weak var addBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var arg1:Float = 0.0
    var arg2:Float = 0.0
    var cState = "ac"
    //calc func btn
    @IBAction func clearBTN(_ sender: UIButton) {
        if displayOutlet.text!.rangeOfCharacter(from: CharacterSet(charactersIn: "x+-/")) != nil && cState == "c"
        {
            var temp = displayOutlet.text![displayOutlet.text!.startIndex]
            displayOutlet.text! = "\(temp)"
            clearBTN.setTitle("AC", for: [])
            cState = "ac"
            
        }
        else if cState == "ac"
        {
            displayOutlet.text! = ""
            historyOutlet.text! = ""
        }
        else
        {
            displayOutlet.text! = ""
            clearBTN.setTitle("AC", for: [])
            cState = "ac"
        }
    }
    @IBAction func pnBTN(_ sender: UIButton) {
        if (displayOutlet.text!.first != ("-") && displayOutlet.text!.count >= 2){
            if displayOutlet.text!.first == "+"
            {
                displayOutlet.text!.insert("-", at: displayOutlet.text!.index(after: displayOutlet.text!.startIndex))
            }
            else{
                displayOutlet.text!.insert("-", at: displayOutlet.text!.startIndex)
            }
        }
        else if (displayOutlet.text!.count >= 2)
        {
            displayOutlet.text!.remove(at: displayOutlet.text!.startIndex)
        }
        else
        {
            displayOutlet.text!.insert("-", at: displayOutlet.text!.startIndex)
        }
        
    }
    @IBAction func percBTN(_ sender: UIButton) {
        arg1 = Float(displayOutlet.text!)!
        displayOutlet.text! = "\(arg1 / 100)"
    }
    
    //number btns
    @IBAction func zeroBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "0"
    }
    @IBAction func oneBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "1"
    }
    @IBAction func twoBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "2"
    }
    @IBAction func threeBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "3"
    }
    @IBAction func fourBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "4"
    }
    @IBAction func fiveBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "5"
    }
    @IBAction func sixBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "6"
    }
    @IBAction func sevenBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "7"
    }
    @IBAction func eightBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "8"
    }
    @IBAction func nineBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "9"
    }
    @IBAction func decBTN(_ sender: UIButton) {
        clearBTN.setTitle("C", for: [])
        cState = "c"
        displayOutlet.text! += "."
    }
    
    //func buttons
    @IBAction func divBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            arg1 = Float(displayOutlet.text!)!
            historyOutlet.text! = displayOutlet.text!
            displayOutlet.text! = ""
            displayOutlet.text!.append("/")
            //disabling function button to prevent crashing
            //it becomes enabled after running a calculation
            divBTN.isEnabled = false
            multBTN.isEnabled = false
            subBTN.isEnabled = false
            addBTN.isEnabled = false
            
        }
    }
    @IBAction func multBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            arg1 = Float(displayOutlet.text!)!
            historyOutlet.text! = displayOutlet.text!
            displayOutlet.text! = ""
            displayOutlet.text!.append("x")
            divBTN.isEnabled = false
            multBTN.isEnabled = false
            subBTN.isEnabled = false
            addBTN.isEnabled = false
        }
    }
    @IBAction func subBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            arg1 = Float(displayOutlet.text!)!
            historyOutlet.text! = displayOutlet.text!
            displayOutlet.text! = ""
            displayOutlet.text!.append("-")
        }
 
    }
    @IBAction func addBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            arg1 = Float(displayOutlet.text!)!
            historyOutlet.text! = displayOutlet.text!
            displayOutlet.text! = ""
            displayOutlet.text!.append("+")
        }
        
    }
    @IBAction func eqBTN(_ sender: UIButton) {
        //functions for doing calculatory stuff
        func add(f1: Float, f2: Float) -> String
        {
            historyOutlet.text! = "\(f1) + \(f2)"
            var calc:String = String(arg1 + arg2)
            return calc
        }
        func sub(f1: Float, f2: Float) -> String
        {
            historyOutlet.text! = "\(f1) - \(f2)"
            var calc:String = String(arg1 - arg2)
            return calc
        }
        func div(f1: Float, f2: Float) -> String
        {
            historyOutlet.text! = "\(f1) / \(f2)"
            var calc:String = String(arg1 / arg2)
            return calc
        }
        func mult(f1: Float, f2: Float) -> String
        {
            historyOutlet.text! = "\(f1) x \(f2)"
            var calc:String = String(arg1 * arg2)
            return calc
        }
        //logic
        if displayOutlet.text!.contains("+")
        {
            
            if (displayOutlet.text!.contains("-"))
            {
                var temp = displayOutlet.text!
                temp.remove(at: displayOutlet.text!.startIndex)
                temp.remove(at: displayOutlet.text!.startIndex)
                //displayOutlet.text! = temp
                arg2 = Float(temp)!
                displayOutlet.text! = sub(f1: arg1, f2: arg2)
                
            }
            else {
                arg2 = Float(displayOutlet.text!)!
                displayOutlet.text! = add(f1: arg1, f2: arg2)
            }
            
        }
        else if displayOutlet.text!.contains("-")
        {
            if displayOutlet.text!.count >= 2
            {
                if (displayOutlet.text!.hasPrefix("--"))
                {
                    var temp = displayOutlet.text!
                    temp.remove(at: displayOutlet.text!.startIndex)
                    temp.remove(at: displayOutlet.text!.startIndex)
                    //displayOutlet.text! = temp
                    arg2 = Float(temp)!
                    displayOutlet.text! = add(f1: arg1, f2: arg2)
                    
                }
                else {
                    arg2 = Float(displayOutlet.text!)!
                    displayOutlet.text! = sub(f1: arg1, f2: arg2)
                }
                
            }
            else
            {
                arg2 = Float(historyOutlet.text!)!
                displayOutlet.text! = sub(f1: arg1, f2: arg2)
            }
        }
        else if displayOutlet.text!.contains("/")
        {
            if displayOutlet.text!.count >= 2
            {
                var temp = displayOutlet.text!
                temp.remove(at: displayOutlet.text!.startIndex)
                arg2 = Float(temp)!
                if arg2 != 0 {
                    displayOutlet.text! = div(f1: arg1, f2: arg2)
                }
            }
            else
            {
                arg2 = Float(historyOutlet.text!)!
                if arg2 != 0 {
                    displayOutlet.text! = div(f1: arg1, f2: arg2)
                }
            }
        }
        else if displayOutlet.text!.contains("x")
        {
            if displayOutlet.text!.count >= 2
            {
                var temp = displayOutlet.text!
                temp.remove(at: displayOutlet.text!.startIndex)
                arg2 = Float(temp)!
                displayOutlet.text! = mult(f1: arg1, f2: arg2)
            }
            else
            {
                arg2 = Float(historyOutlet.text!)!
                displayOutlet.text! = mult(f1: arg1, f2: arg2)
            }
        }
        if displayOutlet.text!.hasSuffix(".0")
        {
            displayOutlet.text!.removeLast()
            displayOutlet.text!.removeLast()
        }
        //re-enabling function buttons
        divBTN.isEnabled = true
        multBTN.isEnabled = true
        subBTN.isEnabled = true
        addBTN.isEnabled = true
    }
    
    
}

