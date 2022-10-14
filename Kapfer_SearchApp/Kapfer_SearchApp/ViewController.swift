//
//  ViewController.swift
//  Kapfer_SearchApp
//
//  Created by Kapfer,Jacob M on 10/13/22.
//

import UIKit

class ViewController: UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
          return .lightContent
    }
    //outlets
    @IBOutlet weak var searchBtnOutlet: UIButton!
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var topicInfoText: UITextView!
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var prevOutlet: UIButton!
    @IBOutlet weak var resetOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (!searchTextField.hasText)
        {
            searchBtnOutlet.isEnabled=false
            prevOutlet.isHidden=true
            nextOutlet.isHidden=true
            topicInfoText.isHidden=true
            resetOutlet.isHidden=true
        }
    }
    //variables and arrays
    var topic=0
    var img=0
    var topicArr = [["henry","cat","doge","crab","fox"],["war","cthulu","invible","wells","mmo"],["venus","jupiter","saturn","uranus","neptune"]]
    
    var animals_keywords = ["animal","animals","dog","cat","crab","fluffy","fox"]
    
    var books_keywords = ["books", "book", "codex", "reading", "lexicon"]
    
    var planets_keywords = ["planets", "planet","space","cosmos","jwst","JWST"]
    
    var topics_array = ["Animals are multicellular, eukaryotic organisms in the biological kingdom Animalia. With few exceptions, animals consume organic material, breathe oxygen, are able to move, can reproduce sexually, and go through an ontogenetic stage in which their body consists of a hollow sphere of cells, the blastula, during embryonic development.", "A book is a medium for recording information in the form of writing or images, typically composed of many pages (made of papyrus, parchment, vellum, or paper) bound together and protected by a cover. The technical term for this physical arrangement is codex (plural, codices). In the history of hand-held physical supports for extended written compositions or records, the codex replaces its predecessor, the scroll. A single sheet in a codex is a leaf and each side of a leaf is a page.", "A planet is a large, rounded astronomical body that is neither a star nor its remnant. The best available theory of planet formation is the nebular hypothesis, which posits that an interstellar cloud collapses out of a nebula to create a young protostar orbited by a protoplanetary disk. Planets grow in this disk by the gradual accumulation of material driven by gravity, a process called accretion."]
    
    //actions
    @IBAction func searchButtonAction(_ sender: UIButton) {
        //unhiding hidding items
        prevOutlet.isHidden=false
        nextOutlet.isHidden=false
        topicInfoText.isHidden=false
        resetOutlet.isHidden=false
        //enabling next button becuase of wierd bug
        nextOutlet.isEnabled=true
        //variable to hold text from search box
        let check = searchTextField.text!
        if(animals_keywords.contains(check))
        {
            topic=1
            updateImage(1)
            img=1
            topicInfoText.text=topics_array[0]
        }
        else if(books_keywords.contains(check))
        {
            topic=2
            updateImage(1)
            img=1
            topicInfoText.text=topics_array[1]
        }
        else if(planets_keywords.contains(check))
        {
            topic=3
            img=1
            updateImage(1)
            topicInfoText.text=topics_array[2]
        }
        else
        {
            resultImage.image=UIImage(named: "no-result")
            topicInfoText.text=""
            prevOutlet.isHidden=true
            nextOutlet.isHidden=true
        }
        prevOutlet.isEnabled=false
    }
    @IBAction func showNextImagesBtn(_ sender: UIButton) {
        if(topic==1)
        {
            img+=1
            updateImage(img)
        }
        else if(topic==2)
        {
            img+=1
            updateImage(img)
        }
        else if(topic==3)
        {
            img+=1
            updateImage(img)
        }
        
        if(img==5)
        {
            nextOutlet.isEnabled=false
        }
        prevOutlet.isEnabled=true
    }
    @IBAction func showPreviousImagesBtn(_ sender: UIButton) {
        if(topic==1)
        {
            img-=1
            updateImage(img)
        }
        else if(topic==2)
        {
            img-=1
            updateImage(img)
        }
        else if(topic==3)
        {
            img-=1
            updateImage(img)
        }
        
        if(img==1)
        {
            prevOutlet.isEnabled=false
        }
        nextOutlet.isEnabled=true
    }

    @IBAction func textChange(_ sender: UITextField) {
        if (!searchTextField.hasText)
        {
            searchBtnOutlet.isEnabled=false
        }
        else if (searchTextField.hasText)
        {
            searchBtnOutlet.isEnabled=true
        }
    }
    
    @IBAction func resetOnClick(_ sender: UIButton) {
        topic=0
        img=0
        resultImage.image=UIImage(named: "no-result")
        topicInfoText.text=""
        searchTextField.text=""
        prevOutlet.isHidden=true
        nextOutlet.isHidden=true
        topicInfoText.isHidden=true
        resetOutlet.isHidden=true
    }
    
    //function for updating image view more easily
    func updateImage(_ imgNum:Int)
    {
        resultImage.image=UIImage(named: topicArr[topic-1][imgNum-1])
    }
    
}

