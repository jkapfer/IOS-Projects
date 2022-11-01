//
//  ViewController.swift
//  TableView
//
//  Created by Kapfer,Jacob M on 11/1/22.
//

import UIKit

class Product {
    var productName: String?
    var productCategory: String?
    
    init(productName: String, productCategory: String) {
        self.productName = productName
        self.productCategory = productCategory
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        
        return cell
    }
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
    }


}

