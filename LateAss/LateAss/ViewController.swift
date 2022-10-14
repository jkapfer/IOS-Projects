//
//  ViewController.swift
//  LateAss
//
//  Created by Kapfer,Jacob M on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var displayImageOutlet: UIImageView!
    @IBOutlet weak var previousButtonOutlet: UIButton!
    @IBOutlet weak var nextButtonOutlet: UIButton!
    @IBOutlet weak var crsNumOutlet: UILabel!
    @IBOutlet weak var crsTitleOutlet: UILabel!
    @IBOutlet weak var semOfferedOutlet: UILabel!
    
    let courses = [
        ["img01", "44555", "Network Security", "fall 2022"],
        ["img02", "44643", "Mobile Edge Computing", "Spring 2023"],
        ["img03", "44656", "Data Streaming", "Summer 2023"]]
    
    var imageNum = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Display the first course (0th index) details.
        displayImageOutlet.image = UIImage(named: courses[0][0])
        crsNumOutlet.text = courses[0][1]
        crsTitleOutlet.text = courses[0][2]
        semOfferedOutlet.text = courses[0][3]
        // Previous Button is disabled
        previousButtonOutlet.isEnabled = false
    }
    @IBAction func onClickPrevious(_ sender: UIButton) {
        // The details of the next course should be displayed.
        imageNum -= 1
        
        updateDetails(imageNum)
        
        //Next Button is enabled
        nextButtonOutlet.isEnabled = true
        
        //once reaching star of array, previous button should be disabled
        if(imageNum == 0)
        {
            //false button should be disabled
            previousButtonOutlet.isEnabled = false

        }
        
        
    }
    
    @IBAction func onClickNext(_ sender: UIButton) {
        // The details of the next course should be displayed.
        imageNum += 1
        
        updateDetails(imageNum)
        
        // Previous Button is enabled
        previousButtonOutlet.isEnabled = true
        
        //once reaching end of array, next button should be disabled
        if(imageNum == courses.count-1)
        {
            //next button should be disabled
            nextButtonOutlet.isEnabled = false
        }
        
    }
    
    func updateDetails(_ imageNum:Int)
    {
        displayImageOutlet.image = UIImage(named: courses[imageNum][0])
        crsNumOutlet.text = courses[imageNum][1]
        crsTitleOutlet.text = courses[imageNum][2]
        semOfferedOutlet.text = courses[imageNum][3]
        
    }
    
}

