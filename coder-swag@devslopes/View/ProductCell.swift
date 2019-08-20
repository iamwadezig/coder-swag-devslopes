//
//  ProductCell.swift
//  coder-swag@devslopes
//
//  Created by Ario Nugroho on 20/08/19.
//  Copyright © 2019 Ario Nugroho. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateProductViews(product:Product){
        
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
    
}
