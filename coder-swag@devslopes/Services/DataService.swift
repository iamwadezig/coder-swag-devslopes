//
//  DataService.swift
//  coder-swag@devslopes
//
//  Created by Ario Nugroho on 17/08/19.
//  Copyright © 2019 Ario Nugroho. All rights reserved.
//

import Foundation

class DataService {
    //creating singleton
    static let instance = DataService()
    
    private let categories = [
    
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    
    ]
    
    func getCategories() -> [Category] {
        
        return categories
        
    }
}
