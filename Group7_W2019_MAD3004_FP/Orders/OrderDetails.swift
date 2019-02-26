//
//  OrderDetails.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class OrderDetails:IDisplay{

/*class OrderDetails{

    var orderId: Int
//    var productId: Int
//    var productName: String
//    var quantity: Int
//    var unitCost: Float
    var subTotal: Float!
    var productArray: [Product]
    
    init(orderId: Int, arrayOfProducts: [Product]){
        self.orderId = orderId
        self.productArray = arrayOfProducts
        self.subTotal = calcSubTotal()
        
    }
    
    func calcSubTotal()-> Float{
        var subTotal : Float = 0
        for productDetails in productArray{
            subTotal = subTotal + Float(((productDetails.getProductUnitCost!) * (Float(productDetails.getProductQuantity!))))
        }
        return subTotal
    }
    
    func calcPrice(){
        print("Total cart price: \(self.subTotal!)")
    }
    
    func printData() {
        print("OrderId : \(self.orderId)")
        print("---------Product Details--------")
        
        for productDetails in productArray{
            print("Product Id: \(productDetails.getProductID ?? 0)")
            print("Product Name: \(String(describing: productDetails.getProductName!))")
            print("Product Quantity: \(productDetails.getProductQuantity ?? 0)")
            print("Product Cost: \(productDetails.getProductUnitCost ?? 0)")
            print("-------------------------------------------------")
        }
    }
}*/
