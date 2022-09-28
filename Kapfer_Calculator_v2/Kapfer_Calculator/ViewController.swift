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
    //funtionc to update display with input buffer
    func updateDisOut()
    {
        displayOutlet.text! = inputBuffer
    }
    
    func calc(array:Array<Substring>) -> Float
    {
        switch array[1] {
        case "x":
            let out:Float = Float(array[0])! * Float(array[2])!
            return out
        default:
            var def:Float = 0.0
            return def
        }
        
    }
    func eq(inputArr: Array<Substring>)
    {
        var arr:Array = inputArr
        //grabbing chunk to perform calculation with
        if !inputArr.isEmpty {
            let calcStr = inputArr[0]
            //removing chunk so magic can happen
            arr.removeFirst()
            //putting into array to be passed to function
            let calcArr:Array = calcStr.split(separator: "|")
            if arr.isEmpty
            {
                displayOutlet.text! = "\(calc(array:calcArr))"
            }
            else{
                var newArg:String = "\(calc(array:calcArr))"
                var str = newArg + arr[0] + "|"
                var arr2 = str.split(separator: "|")
                arr.removeFirst()
                eq(inputArr:arr2)
            }
            
        }
        
    }
    
    //declaring Variables
    var inputBuffer:String = ""
    
    //calc func btn
    @IBAction func clearBTN(_ sender: UIButton) {
        displayOutlet.text! = ""
        inputBuffer = ""
        historyOutlet.text! = ""
    }
    @IBAction func pnBTN(_ sender: UIButton) {
        
    }
    @IBAction func percBTN(_ sender: UIButton) {
        
    }
    
    //number btns
    @IBAction func zeroBTN(_ sender: UIButton) {
        inputBuffer += "0"
        updateDisOut()
    }
    @IBAction func oneBTN(_ sender: UIButton) {
        inputBuffer += "1"
        updateDisOut()
    }
    @IBAction func twoBTN(_ sender: UIButton) {
        inputBuffer += "2"
        updateDisOut()
    }
    @IBAction func threeBTN(_ sender: UIButton) {
        inputBuffer += "3"
        updateDisOut()
    }
    @IBAction func fourBTN(_ sender: UIButton) {
        inputBuffer += "4"
        updateDisOut()
    }
    @IBAction func fiveBTN(_ sender: UIButton) {
        inputBuffer += "5"
        updateDisOut()
    }
    @IBAction func sixBTN(_ sender: UIButton) {
        inputBuffer += "6"
        updateDisOut()
    }
    @IBAction func sevenBTN(_ sender: UIButton) {
        inputBuffer += "7"
        updateDisOut()
    }
    @IBAction func eightBTN(_ sender: UIButton) {
        inputBuffer += "8"
        updateDisOut()
    }
    @IBAction func nineBTN(_ sender: UIButton) {
        inputBuffer += "9"
        updateDisOut()
    }
    @IBAction func decBTN(_ sender: UIButton) {
        inputBuffer += "."
        updateDisOut()
    }
    
    //func buttons
    @IBAction func divBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            if inputBuffer.contains("|")
            {
                inputBuffer += "#|/|"
                updateDisOut()
            }
            else{
                inputBuffer += "|/|"
            }
        }
    }
    @IBAction func multBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            if inputBuffer.contains("|")
            {
                inputBuffer += "#|x|"
                updateDisOut()
            }
            else{
                inputBuffer += "|x|"
            }
        }
    }
    @IBAction func subBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            if inputBuffer.contains("|")
            {
                inputBuffer += "#|-|"
                updateDisOut()
            }
            else{
                inputBuffer += "|-|"
            }
        }
 
    }
    @IBAction func addBTN(_ sender: UIButton) {
        if !displayOutlet.text!.isEmpty
        {
            if inputBuffer.contains("|")
            {
                inputBuffer += "#|+|"
                updateDisOut()
            }
            else{
                inputBuffer += "|+|"
            }
        }
        
    }
    @IBAction func eqBTN(_ sender: UIButton) {
        
//        //removing symbols to display history
//        let temp = inputBuffer.replacingOccurrences(of: "|", with: " ")
//        historyOutlet.text! += temp.replacingOccurrences(of: "#", with: " ")
//
//        //splitting array into chunks to perform operations
//        var inputArr:Array = inputBuffer.split(separator: "#")
//        //grabbing chunk to perform calculation with
//        let calcStr = inputArr[0]
//        //removing chunk so magic can happen
//        inputArr.removeFirst()
//        //putting into array to be passed to function
//        let calcArr:Array = calcStr.split(separator: "|")
        
//        calc(array:calcArr)
//        displayOutlet.text! = "\(inputArr)"
        //removing symbols to display history
        var temp = inputBuffer.replacingOccurrences(of: "|", with: " ")
        historyOutlet.text! += temp.replacingOccurrences(of: "#", with: " ")
        //splitting array into chunks to perform operations
        var inputArr:Array = inputBuffer.split(separator: "#")
        eq(inputArr:inputArr)
        
        
    }
    

}

