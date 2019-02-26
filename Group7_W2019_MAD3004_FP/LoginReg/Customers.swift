//
//  Customers.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Customers:User{
    private var customerName: String
    private var address: String
    private var email: String
    private var creditCardInfo: String
    private var shippingInfo: String
    static var dicOfCustomers = [String:Customers]()
    let shoppingCart = ShoppingCart.getShoppingCart()
    
    override init(){
        self.customerName = String()
        self.address = String()
        self.email = String()
        self.creditCardInfo = String()
        self.shippingInfo = String()
        super.init()
    }
    
    func registerCustomer1(customerId: String,customerName: String,address: String,email: String,password: String,creditCardInfo: String,shippingInfo: String, loginStatus : LoginStatus) throws{
        
        if(!Customers.dicOfCustomers.isEmpty){
                if Customers.dicOfCustomers[customerId] != nil {
                throw OrderError.Invalid("Id is already taken")
            }
        }
        
        if customerId.isEmpty{
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
        registerCustomer(customer: self)
    }
    
    func registerCustomer(customer: Customers){
        Customers.dicOfCustomers[customer.userId] = customer
    }
    
    func login(userId: String, password: String)-> Bool{
        var login: Bool = false
        for (id, customer) in Customers.dicOfCustomers{
            if ((id == userId) && (customer.password == password)){
                print("Successfuly login")
                login = true
            }else{
                print("User Id Password does not match")
                login = false
            }
        }
        return login
    }
    
    func updateProfile(){
        
        
    }
    
    func placeOrder(shippingInfo: ShippingInfo!){
        if let shipingInfo1 = shippingInfo{
            let order = Orders(dateShipped: Date(),customerId: userId,customerName: customerName,status: "Processing",shippingId: "1", shippingInfo: shipingInfo1)
            order.placeOrder(shippingInfo: shippingInfo, products: shoppingCart.getArrayOfProducts)
        }else{
            print("Please pass the Shipping Information")
        }
    }
    
    
    
    
    override func printData(){
        super.printData()
        print("Customer Name    : \(String(describing: self.customerName))")
        print("Customer Address  : \(String(describing: self.address))")
        print("Customer Email : \(String(describing: self.email))")
        print("Credit Card     : \(String(describing: self.creditCardInfo))")
        print("Shipping Info   : \(String(describing: self.shippingInfo))")
    }
}
