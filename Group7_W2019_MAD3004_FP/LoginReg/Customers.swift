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
    var dicOfCustomers = [String:Customers]()
    let shoppingCart = ShoppingCart.getShoppingCart()
    
    init?(customerId: String,customerName: String,address: String,email: String,password: String,creditCardInfo: String,shippingInfo: String, loginStatus: LoginStatus){
        self.customerName = customerName
        self.address = address
        self.email = email
        self.creditCardInfo = creditCardInfo
        self.shippingInfo = shippingInfo
        super.init(userId: customerId, password: password, loginStatus:loginStatus)

        if customerId.isEmpty{
            print("Customer ID should not be empty")
            return nil
        }
        
        if customerName.count < 10{
            print("Customer Name must be >= 10 length")
            return nil
        }
        
        if !password.isValidPassword(){
            print("Invalid Password format")
            return nil
        }
        
        if ((address.isEmpty) || (address == "")){
            print("Adrress field cannot be empty")
        }
        
        if email.count < 6{
            print("Customer Email ID must be >= 6 length")
            return nil
        }
        else{
            if !email.isValidEmail(){
                print("Invalid Student Email ID")
                return nil
            }
        }
        registerCustomer(customer: self)
    }
    
    
    func registerCustomer(customer: Customers){
        dicOfCustomers[customer.userId] = customer
    }
    
    func login(userId: String, password: String){
        for (id, customer) in dicOfCustomers{
            if ((id == userId) && (customer.password == password)){
                print("Successfuly login")
            }else{
                print("User Id Password does not match")
            }
        }
    }
    
    func updateProfile(){
        
    }
    
    func placeOrder(){
        
    }
    
   
    

override func printData(){
    super.printData()
    print("Customer ID    : \(String(describing: self.customerName))")
    print("Customer Name  : \(String(describing: self.address))")
    print("Customer Email : \(String(describing: self.email))")
    print("Credit Card     : \(String(describing: self.creditCardInfo))")
    print("Shipping Info   : \(String(describing: self.shippingInfo))")
    }
}

