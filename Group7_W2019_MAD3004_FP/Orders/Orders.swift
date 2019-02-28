//
//  Orders.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class Orders {
    private var orderId = 0
    private var dateCreated: String!
    private var dateShipped: Date!
    private var customerName: String
    private let customerId: String
    private var status: String
    private var shippingId: String
    private var shippingInfo: ShippingInfo
    
    
    init(dateShipped: Date, customerId: String, customerName:String, status: String, shippingId: String, shippingInfo: ShippingInfo){
        self.orderId = orderId+1
        self.dateShipped = dateShipped
        self.customerId = customerId
        self.customerName = customerName
        self.status = status
        self.shippingId = shippingId
        self.shippingInfo = shippingInfo
        self.dateCreated = getCurrentDate()
    }
    
    func getCurrentDate()-> String{
        let calendar = Calendar.current
        let day = calendar.component(.day, from: Date())
        let month = calendar.component(.month, from: Date())
        let year = calendar.component(.year, from: Date())
        return "\(month)-\(day)-\(year)"
    }
    
    func placeOrder(shippingInfo: ShippingInfo, products: [Product]){
        print("\n...Your Order is placed...!!")
        let orderDetails = OrderDetails(orderId: self.orderId, arrayOfProducts: products)
        orderDetails.calcPrice()
    }
}
