
//  User.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class User: IDisplay{
    var userId: String!
    var password: String!
    var loginStatus = LoginStatus.Not_Valid
    static var userInfo=[String:String]()
    
    init() {
    }
    
    init?(userId: String, password: String,loginStatus: LoginStatus) throws{
        self.loginStatus=loginStatus
        self.userId = userId
        self.password = password
        if User.userInfo.keys.contains(self.userId) {
            throw OrderError.Invalid("User Id is already taken...")
        }else{
            User.userInfo[self.userId] = self.password;
        }
       
    }
    
    
    func verifyLogin()-> Bool{
        if(self.loginStatus == LoginStatus.Not_Valid){
            return false
        }
        else{
            return true
        }
    }

    
    func printData() {
        print("User Id: \(String(describing: self.userId!))")
        print("Login Status: \(self.loginStatus)")
    }
}
