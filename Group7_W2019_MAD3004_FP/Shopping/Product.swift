//
//  Products.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by Kunal Gaba on 2019-02-25.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Product {
    var productId:Int?
    var getProductID:Int?
    {
        get{
            return productId
        }
    }
    var productName: Products
    
    var getProductName:Products?
    {
        get{
            return productName
        }
    }
    private var unitCost:Float?
    var getProductUnitCost:Float?
    {
        get{
            return unitCost
        }
    }
    var quantity:Int?
    var getProductQuantity:Int?
    {
        get{
            return quantity
        }
    }
    init(productId:Int,productName:Products,unitCost:Float,quantity:Int) {
        self.productId = productId
        self.productName = productName
        self.unitCost = unitCost
        self.quantity = quantity
        
    }
    //add quantity checks later
    func updateQuantity(newQuantity:Int) {
        self.quantity = self.quantity! + newQuantity
    }
    func cartQuantityDefault(cartQuantity:Int) {
        self.quantity =  cartQuantity
    }
    
    func display()
    {
        print(self.productId!,self.productName,self.unitCost!, self.quantity!, separator:"\t")
        
    }}

