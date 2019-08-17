//
//  CategoryViewController.swift
//  coder-swag@devslopes
//
//  Created by Ario Nugroho on 17/08/19.
//  Copyright © 2019 Ario Nugroho. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var categoryTable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        categoryTable.delegate = self
        categoryTable.dataSource = self
        
    }

    

}

//MARK: - Setting Delegate Table View

extension CategoryViewController : UITableViewDelegate {
    
    
}

//MARK: - Setting Data Source Table View

extension CategoryViewController : UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            
            cell.updateViews(category: category)
            
            return cell
            
        } else {
            
            return CategoryCell()
            
        }
        
    }
    
}
