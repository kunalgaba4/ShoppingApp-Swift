//
//  ShippingInfo.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShippingInfo{
    var shippingId: String
    var shippingType: String
    var shippingCost: Int
    var shippingRegionId: String
    
    init(shippingId: String,shippingType: String,shippingCost: Int,shippingRegionId: String)
    {
        self.shippingId = shippingId
        self.shippingType = shippingType
        self.shippingCost = shippingCost
        self.shippingRegionId = shippingRegionId
    }
    
    func updateShippingInfo(){
    
    }
    
}

