//
//  Administration.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


class Admin: User{
    

    var adminName: String!
    var email: String!
    
    init?(adminName: String, email: String, userId: String, password: String,loginStatus: LoginStatus){
        self.adminName = adminName
        self.email = email
        super.init(userId: userId, password: password, loginStatus: loginStatus)
    }
    
    func updateCatalog() -> Bool{
      return true
    }

    
    override func printData() {
    }
}

