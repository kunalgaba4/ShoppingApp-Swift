//
//  User.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class User: IDisplay{
    let userId: String!
    var password: String!
    var loginStatus : LoginStatus
    var userInfo=[String:String]()
    
    init?(userId: String, password: String,loginStatus:LoginStatus){
        self.userId = userId
        self.password = password
        self.loginStatus = LoginStatus.Not_Verified
        if userInfo.keys.contains(self.userId) {
            print("User id is already taken")
            return nil
        }else{
            userInfo[userId] = self.password;
        }
    }
    
<<<<<<< HEAD
    func verifyLogin(){

}
=======
    
    func verifyLogin()-> Bool{
        if(self.loginStatus == LoginStatus.Not_Verified){
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
>>>>>>> 04199c421ba5ea69cf9d8ac3925ec0d70817d366
}
