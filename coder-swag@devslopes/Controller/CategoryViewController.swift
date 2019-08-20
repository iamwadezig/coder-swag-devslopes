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
//        categoryTable.rowHeight = 175.0
        
    }

    

}

//MARK: - Setting Delegate Table View

extension CategoryViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //it will perform segue if we select avery category on indexpath
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "productSegue", sender: category)
        
    }
    //prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //pass in data from this vc to next vc
        if let productsVC = segue.destination as? ProductViewController {
            //setting no title backbutton on productviewcontroller
            let backButton = UIBarButtonItem()
            backButton.title = ""
            navigationItem.backBarButtonItem = backButton
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
            
        }
    }
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return 175

    }
    
    
}
