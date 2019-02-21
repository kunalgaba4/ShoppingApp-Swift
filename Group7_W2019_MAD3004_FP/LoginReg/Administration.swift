//
//  Administration.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Admin{
    
    var adminName: String!
    var email: String!
    
    init(adminName: String, email: String)
    {
        self.adminName = adminName
        self.email = email
    }
    
    func updateCatalog() -> Bool
    {
      return true
    }
}
