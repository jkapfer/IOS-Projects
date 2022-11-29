//
//  ItemInfoViewController.swift
//  Kapfer_GroceryApp
//
//  Created by Kapfer,Jacob M on 11/16/22.
//

import UIKit

class ItemInfoViewController: UIViewController {
    var item:GroceryItem?

    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    @IBOutlet weak var navItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        itemImageViewOutlet.image = UIImage(named: item!.itemImage)
        navItem.title = item!.itemName
    }
    
    
    @IBAction func showInfoButton(_ sender: UIButton) {
        itemInfoOutlet.text = item?.itemInfo
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
