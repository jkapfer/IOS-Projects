//
//  ViewController.swift
//  anagramApp
//
//  Created by Kapfer,Jacob M on 9/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descLabelOutlet: UILabel!
    @IBOutlet weak var word1Outlet: UITextField!
    @IBOutlet weak var word2Outlet: UITextField!
    @IBOutlet weak var resultOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func CheckButtonClicked(_ sender: Any) {
        var ana:Bool = false
        for element in word2Outlet.text!
        {
            if (word1Outlet.text!.contains(element) && word1Outlet.text!.count == word2Outlet.text!.count && word2Outlet.text! != word1Outlet.text!)
            {
                ana = true
            }
            else
            {
                ana = false
                break
            }
        }
        if (ana == true)
        {
            resultOutlet.text = "Word 2 is an anagram of word 1"
        }
        else
        {
            resultOutlet.text = "Word 2 is not an anagram of word 1"
        }
    }
        
    
    

}

