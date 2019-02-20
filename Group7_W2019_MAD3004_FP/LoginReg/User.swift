//
//  User.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation



class User: IDisplay{
   

    var userId: Int!
    var password: String!
    var loginStatus : LoginStatus
    
    init(userId: Int, password: String, loginStatus: LoginStatus){
        self.userId = userId
        self.password = password
        self.loginStatus = LoginStatus.NotVerified
    }
    
<<<<<<< HEAD
    func verifyLogin(){

}
=======
    
    func verifyLogin()-> Bool
    {
        if(self.loginStatus == LoginStatus.NotVerified){
            return false
        }
        else{
            return true
        }
    }

    
    func printData() {
    }
>>>>>>> 04199c421ba5ea69cf9d8ac3925ec0d70817d366
}
