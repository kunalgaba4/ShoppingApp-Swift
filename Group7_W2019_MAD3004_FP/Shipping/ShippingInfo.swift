//
//  ShippingInfo.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShippingInfo:IDisplay{
    private var shippingId: String
    private var shippingType: String
    private var shippingCost: Int
    private var shippingRegionId: String
    
    init?(shippingId: String,shippingType: String,shippingCost: Int,shippingRegionId: String){
        if (shippingId.isEmpty) || shippingId.contains(""){
            print("Please enter valid shipping id")
            return nil
        }else{
            self.shippingId = shippingId
        }
        if (shippingType.isEmpty) || shippingType.contains(""){
            print("Please enter valid shipping id")
            return nil
        }else{
            self.shippingType = shippingType
        }
        if (shippingRegionId.isEmpty) || shippingRegionId.contains(""){
            print("Please enter valid shipping id")
            return nil
        }else{
            self.shippingRegionId = shippingRegionId
        }
        if(shippingCost < 0){
            print("Please enter valid shipping cost")
            return nil
        }else{
            self.shippingCost = shippingCost
        }
        
        
    }
    
    func updateShippingInfo(shippingType: String?,shippingCost: Int?,shippingRegionId: String?){
        if let type = shippingType {
            self.shippingType = type
        }
        if let cost = shippingCost{
            self.shippingCost = cost
        }
        if let regionId = shippingRegionId{
            self.shippingRegionId = regionId
        }
        
    }
    
    func printData() {
        print("Shipping Id: \(self.shippingId)")
        print("Shipping type: \(self.shippingType)")
        print("Shipping cost: \(self.shippingCost)")
        print("Shipping region: \(self.shippingRegionId)")
    }
    
}
