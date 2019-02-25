//
//  Orders.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class Orders {
    var orderId = 0
    var dateCreated: String!
    var dateShipped: Date
    var customerName: String
    var customerId: Int
    var status: String
    var shippingId: String

    
    init(dateShipped: Date, customerId: Int, customerName:String, status: String, shippingId: String){
        self.orderId = orderId+1
        self.dateShipped = dateShipped
        self.customerId = customerId
        self.customerName = customerName
        self.status = status
        self.shippingId = shippingId
        self.dateCreated = getCurrentDate()
    }
    
    func getCurrentDate()-> String{
        let calendar = Calendar.current
        let day = calendar.component(.day, from: Date())
        let month = calendar.component(.month, from: Date())
        let year = calendar.component(.year, from: Date())
        return "\(month)-\(day)-\(year)"
    }
    
    func placeOrder(){
    }
}
