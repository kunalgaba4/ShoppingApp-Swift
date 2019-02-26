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
    var productName: ProductName?
    
    var getProductName:ProductName?
    {
        get{
            return productName
        }
    }
    var unitCost:Float?
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
    
    init() {
        
    }
    
    init?(productId:Int,productName:ProductName,unitCost:Float,quantity:Int) {
        self.productId = productId
        self.productName = productName
        self.unitCost = unitCost
        self.quantity = quantity
        
        if quantity <= 0 {
            print("Quantity of item must be greater than 0")
            return nil
        }
        if unitCost <= 0{
            print("Cost of Item must be greater than 0")
            return nil
        }
        
    }
    func updateQuantity(newQuantity:Int) {
        self.quantity = newQuantity
    }
    func cartQuantityDefault(cartQuantity:Int) {
        self.quantity =  cartQuantity
    }
    
    func display(){
        print("Product Details")
        print("Product Id:\(self.productId!)","Prod Name:\(self.productName!)","Cost:\(self.unitCost!)", "Quant:\(self.quantity!)", separator:"\t")
    }}

