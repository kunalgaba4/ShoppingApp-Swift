//
//  User.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation



class User{
    
    var userId: Int!
    var password: String!
    var loginStatus = LoginStatus.NotVerified
    
    init(userId: Int, password: String, loginStatus: Bool){
        self.userId = userId
        self.password = password
        
    }
    
    
    
    func verifyLogin()-> Bool
    {
        if(self.loginStatus == LoginStatus.NotVerified)
        {
            return false
        }
        else{
        
            return true
        }
    }
    
    func verify () {
        loginStatus = LoginStatus.Verified }
}
