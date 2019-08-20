//
//  ProductViewController.swift
//  coder-swag@devslopes
//
//  Created by Ario Nugroho on 20/08/19.
//  Copyright © 2019 Ario Nugroho. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    //set as empty array, because if it is nil app will crash
    private(set) public var products = [Product]()

    
    @IBOutlet weak var productTable: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productTable.delegate = self
        productTable.dataSource = self

    }
    
    func initProducts(category: Category) {
        
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        //setting the title of productviewcontroller the same as chosen category
        navigationItem.title = category.title
        
    }
}

extension ProductViewController: UICollectionViewDelegate {
    
    
}

extension ProductViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell {
            
            let product = products[indexPath.row]
            
            cell.updateProductViews(product: product)
            
            return cell
            
        }
        
        return ProductCell()
        
    }
    
    
    
}
