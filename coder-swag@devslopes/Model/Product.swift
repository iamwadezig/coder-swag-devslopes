//
//  Product.swift
//  coder-swag@devslopes
//
//  Created by Ario Nugroho on 20/08/19.
//  Copyright © 2019 Ario Nugroho. All rights reserved.
//

import Foundation

struct Product {
    
    private (set) public var title : String
    private (set) public var imageName : String
    private (set) public var price : String
    
    init(title:String, imageName:String, price:String) {
        
        self.title = title
        self.imageName = imageName
        self.price = price
        
    }
    
    
}
