//
//  ViewController.swift
//  Kapfer_WordGuess
//
//  Created by Kapfer,Jacob M on 10/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var totalWordsLabel: UILabel!
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var playAgainOut: UIButton!
    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var GuessButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        totalWordsLabel.text = totalWordsLabel.text! + " 5"
    }
    let stuff = [["DOG", "dog", "Man's Best Friend"], ["CAT", "cat", "Furry 4 legged nocturnal asshole"], ["CRAB", "crab", "Joe has a shack of these friendly crustaceans"], ["POTATO", "potato", "The only food source you need in Minecraft"], ["LIZARD", "zucc", "The Zucc"]]
    var index = 0
    var wordRemaining = 5
    @IBAction func thingChanged(_ sender: Any) {
        if guessLetterField.text! != ""
        {
            GuessButton.isEnabled = true
        }
        else
        {
            GuessButton.isEnabled = false
        }
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        let word = stuff[index][0] as! String
        if(word.contains(guessLetterField.text!))
        {
            var x = 0
            var temp = Array(userGuessLabel.text!)
            for char in word
            {
                if String(char) == guessLetterField.text!
                {
                    temp[x] = char
                }
                
                x+=1
            }
            userGuessLabel.text! = String(temp)
        }
        
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
    }
    
    func wordComplete()
    {
        hintLabel.text = ""
        if (index > 4)
        {
            //reset variables
            statusLabel.text = "You Win"
            index = 0
            wordRemaining = 5
        }
            //setting image
            
            statusLabel.text = "You guessed the word!!!!"
            index += 1
            wordRemaining -= 1
            wordsRemainingLabel.text = "Total number of words remaining in game \(wordRemaining)"
            wordsGuessedLabel.text = "Total number of words guessed successfully: \(5 - wordRemaining)"
    }
        
}


