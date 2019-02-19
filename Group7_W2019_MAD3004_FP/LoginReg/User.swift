//
//  User.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class User{
    
    var userId: Int
    var password: String
    var loginStatus: String
    
    init(userId: Int,password: String,loginStatus: String){
        self.userId = userId
        self.password = password
        self.loginStatus = loginStatus
    }
    
    func verifyLogin()-> Bool{
        
    }
}
