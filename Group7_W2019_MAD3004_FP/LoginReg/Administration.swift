
//  Administration.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Administration: User{
    var adminName: String!
    var email: String!
    
    init?(userId: String, password: String,adminName: String, email: String,loginStatus: LoginStatus)throws{
        try super.init(userId: userId, password: password, loginStatus:loginStatus)
        self.adminName = adminName
        self.email = email    
    }
    
    func updateCatalog(products: [Product], updProduct:Product) -> Bool{
        for i in products{
            if ((i.getProductID == updProduct.getProductID) && (i.getProductName == updProduct.getProductName)){
                updProduct.quantity = i.getProductQuantity
                updProduct.unitCost = i.getProductUnitCost
                return true
            }
            
        }
        print("Product is not found!")
        return false
    }
    
    override func printData() {
        super.printData()
        print("Admin Name: \(String(describing: self.adminName!))")
        print("Email: \(String(describing: self.email!))")
    }
}
