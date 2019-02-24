//
//  OrderDetails.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class OrderDetails : Orders {
    
    
    let productId:Int?
    private var productName:String?
    private var quantity:Int?
    var getProductQuantity:Int?
    {
        get{
            return quantity
        }
    }
    var unitCost: Double?
    var getUnitCost:Double?
    {
        get{
            return unitCost
        }
    }
    
    
    var getProductName:String?
    {
        get{
            return productName
        }
        
    }
    /*var getSubTotal:Double
     {
     get{
     return subTotal
     }
     }*/
    
    init(orderId:Int, dateCreated:Date, dateShipped: Date, customerId: Int, customerName: String,status: String, shippingId:String, productId:Int, productName:String, quantity:Int, unitCost:Double) {
        
        self.productId = productId
        
        self.productName = productName
        self.quantity = quantity
        self.unitCost = unitCost
        //self.subTotal = subTotal
        super.init(orderId: orderId, dateCreated: dateCreated, dateShipped: dateShipped, customerId: customerId, customerName: customerName, status: status, shippingId: shippingId)
    }
    
    //var subTotal:Double
    func calcPrice() -> Double
    {
        
        let subTotal = getUnitCost! * Double(getProductQuantity!)
        print("Subtotal:")
        return(subTotal)
        
    }
    
    func printData()
    {
        print("**---------------------------------------------**")
        print("Order Id: \(String(describing: self.orderId!))")
        print("Product Id: \(String(describing: self.productId!))")
        print("Product Name: \(String(describing: self.productName!))")
        print("Quantity: \(String(describing: self.quantity!))")
        print("Unit Cost: \(String(describing: self.unitCost!))")
        
        
       
    }
    
    
    
    
}
