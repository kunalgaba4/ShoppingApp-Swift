
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
        if ((adminName.isEmpty)||(adminName.contains(""))) {
            return nil
        }else{
            self.adminName = adminName
        }
        if email.isValidEmail() {
            self.email = email
        }else{
            return nil
        }
        try super.init(userId: userId, password: password, loginStatus:loginStatus)
    }
    
    func updateCatalog(products: [Product], updProduct:Product) -> Bool{
        for i in products{
            if ((i.getProductID == updProduct.getProductID) && (i.getProductName==updProduct.getProductName)){
                if((updProduct.getProductQuantity ?? -1 < 0) || (Int(updProduct.getProductUnitCost ?? -1) < 0)){
                    return false
                }else{
                    updProduct.quantity = i.getProductQuantity
                    updProduct.unitCost = i.getProductUnitCost
                    return true
                }
                
            }else{
                print("Product Id or name is incorrect")
                return false
            }
        }
        return false
    }
    
    override func printData() {
        super.printData()
        print("Admin Name: \(String(describing: self.adminName!))")
        print("Email: \(String(describing: self.email!))")
    }
}
