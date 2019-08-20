//
//  DataService.swift
//  coder-swag@devslopes
//
//  Created by Ario Nugroho on 17/08/19.
//  Copyright © 2019 Ario Nugroho. All rights reserved.
//

import Foundation
//this act as backend database (server)
class DataService {
    //creating singleton
    static let instance = DataService()
    
    private let categories = [
    
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    
    ]
    
    private let hats = [
        
        Product(title: "Devslopes Logo Graphic Beanie", imageName: "hat01.png", price: "$18"),
        Product(title: "Devslopes Logo Hat Black", imageName: "hat02.png", price: "$22"),
        Product(title: "Devslopes Logo Hat White", imageName: "hat03.png", price: "$20"),
        Product(title: "Devslopes Logo Snapback", imageName: "hat04.png", price: "$18")
        
    ]
    
    private let hoodies = [
    
        Product(title: "Devslopes Logo Hoodie Gray", imageName: "hoodie01.png", price: "$24"),
        Product(title: "Devslopes Logo Hoodie Red", imageName: "hoodie02.png", price: "$30"),
        Product(title: "Devslopes Hoodie Black", imageName: "hoodie03.png", price: "$34"),
        Product(title: "Devslopes Hoodie White", imageName: "hoodie04.png", price: "$28")
        
    ]
    
    private let shirts = [
    
        Product(title: "Devslopes Logo Shirt Black", imageName: "shirt01.png", price: "$18"),
        Product(title: "Devslopes Badge Shirt White", imageName: "shirt02.png", price: "$20"),
        Product(title: "Devslopes Logo Shirt Grey", imageName: "shirt03.png", price: "$27"),
        Product(title: "Hustle Delegate", imageName: "shirt04.png", price: "$18"),
        Product(title: "Kickflip Studios Black", imageName: "shirt05.png", price: "$28")
        
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        
        return categories
        
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        
        return hats
        
    }
    
    func getHoodies() -> [Product] {
        
        return hoodies
        
    }
    
    func getShirts() -> [Product] {
        
        return shirts
        
    }
    
    func getDigitalGoods() -> [Product] {
        
        return digitalGoods
        
    }
    
}

