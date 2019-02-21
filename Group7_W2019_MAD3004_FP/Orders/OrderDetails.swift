//
//  OrderDetails.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class OrderDetails{
    var orderId: Int
    var productId: Int
    var productName: String
    var quantity: Int
    var unitCost: Float
    var subTotal: Float
    
    init(orderId: Int, productId: Int,productName: String, quantity: Int, unitCost: Float, subTotal: Float)
    {
        self.orderId = orderId
        self.productId = productId
        self.productName = productName
        self.quantity = quantity
        self.unitCost = unitCost
        self.subTotal = subTotal
        
    }
    
    
    func calcPrice(){
    
        
    
    }
}
