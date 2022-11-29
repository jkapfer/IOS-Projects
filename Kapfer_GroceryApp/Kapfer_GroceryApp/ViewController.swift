//
//  ViewController.swift
//  Kapfer_GroceryApp
//
//  Created by Kapfer,Jacob M on 11/16/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var sectionsArray = sections
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return sectionsArray.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier:  "sectionCell", for: indexPath)
        
        //populate a cell
        cell.textLabel?.text = sectionsArray[indexPath.row].section
        
        //return a cell
        return cell
    }
    
    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        grocerySectionsTableView.delegate = self
        grocerySectionsTableView.dataSource = self
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let transition = segue.identifier
        if transition == "itemsSegue"{
            let destination = segue.destination as! GroceryItemsViewController
            destination.items = sectionsArray[(grocerySectionsTableView.indexPathForSelectedRow?.row)!].items_Array
            destination.navTitle = sectionsArray[(grocerySectionsTableView.indexPathForSelectedRow?.row)!].section
        }

    }
    
    
}

