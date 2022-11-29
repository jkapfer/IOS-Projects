//
//  GroceryItemsViewController.swift
//  Kapfer_GroceryApp
//
//  Created by Kapfer,Jacob M on 11/16/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var items:[GroceryItem]?
    var navTitle:String?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = groceryItemsTableView.dequeueReusableCell(withIdentifier:  "itemCell", for: indexPath)
        
        //populate a cell
        cell.textLabel?.text = items![indexPath.row].itemName
        
        //return a cell
        return cell
    }
    

    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self
        navItem.title = navTitle
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let transition = segue.identifier
        if transition == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
            destination.item = items![(groceryItemsTableView.indexPathForSelectedRow?.row)!]
        }
    }
    

}
