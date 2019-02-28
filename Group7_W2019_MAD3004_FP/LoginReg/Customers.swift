//
//  Customers.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Customers:User{
    var customerName: String
    var address: String
    var email: String
    var creditCardInfo: String
    var shippingInfo: String
    var shoppingCart1: [ShoppingCart1]
    static var dicOfCustomers = [String:Customers]()
    var shippingAddressCount = 0
    
    override init?(userId: String, password: String, loginStatus: LoginStatus) throws {
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        self.shoppingCart1 = [ShoppingCart1]()
        try super.init(userId: userId, password: password,loginStatus: loginStatus)
    }
    override init(){
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        self.shoppingCart1 = [ShoppingCart1]()
        super.init()
    }
    
    func registerCustomer1(customerId: String,customerName: String,address: String,email: String,password: String,creditCardInfo: String,shippingInfo: String, loginStatus : LoginStatus) throws{
        
        if User.userInfo.keys.contains(customerId) {
            throw OrderError.Invalid("User Id is already taken...")
        }else{
            User.userInfo[customerId] = password;
        }
        
        
//        if(!Customers.dicOfCustomers.isEmpty){
//                if Customers.dicOfCustomers[customerId] != nil {
//                throw OrderError.Invalid("Id is already taken")
//            }
//        }
        
        if customerId.isEmpty || customerId.contains(""){
            throw OrderError.Invalid("Customer ID should not be empty")
        }
        
        if customerName.count < 10{
            throw OrderError.Invalid("Customer Name must be >= 10 length")
            
        }
        
        if !password.isValidPassword(){
            throw OrderError.Invalid("Invalid Password format")
            
        }
        
        if ((address.isEmpty) || (address == "")){
            throw OrderError.Invalid("Adrress field cannot be empty")
        }
        
        if !email.isValidEmail(){
            throw OrderError.Invalid("Invalid Student Email ID")
            
        }
        super.userId = customerId
        super.password = password
        super.loginStatus = loginStatus
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
    }
    
    func login(userId: String, password: String)-> Bool{
        var login: Bool = false
        for (id, pass) in User.userInfo{
            if ((id == userId) && (pass == password)){
                print("Successfuly login")
                login = true
            }else{
                print("User Id Password does not match")
                login = false
            }
        }
        return login
    }
    
    func updateProfile(customer: [Customers]){
        for c in customer{
            if c.userId == self.userId{
                c.customerName = self.customerName
                c.address = self.address
                c.email = self.email
                c.shippingInfo = self.shippingInfo
                c.creditCardInfo = self.creditCardInfo
                print("Profile Updated")
            }
        }
    }
    
    func placeOrder(shippingInfo: ShippingInfo!){
        if(shippingAddressCount == 0){
            if let shipingInfo1 = shippingInfo{
                let order = Orders(dateShipped: Date(),customerId: userId,customerName: customerName,status: "Processing",shippingId: "1", shippingInfo: shipingInfo1)
                var arrayOfProducts = [Product]()
                for i in shoppingCart1{
                    arrayOfProducts.append(i.getProduct!)
                }
                order.placeOrder(shippingInfo: shippingInfo, products: arrayOfProducts)
                shippingAddressCount+=1
            }else{
                print("Please pass the Shipping Information")
                shippingAddressCount = 0
            }
        }else{
            print("You are not allowed to pass multiple shipping addresses")
        }
    }
    
    override func printData(){
        super.printData()
        print("Customer Name    : \(String(describing: self.customerName))")
        print("Customer Address  : \(String(describing: self.address))")
        print("Customer Email : \(String(describing: self.email))")
        print("Cart Info:")
        for s in shoppingCart1{
            print(s.printData())
        }
        print("Credit Card     : \(String(describing: self.creditCardInfo))")
        print("Shipping Info   : \(String(describing: self.shippingInfo))")
    }
}
