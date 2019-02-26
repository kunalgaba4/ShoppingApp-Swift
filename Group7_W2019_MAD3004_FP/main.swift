//
//  main.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-13.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


//Add User

do{
    var user1 = try User(userId: "1",password: "Kunal@1234",loginStatus: LoginStatus.Valid)
    var user2 = try User(userId: "2",password: "Kunal@123", loginStatus: LoginStatus.Valid)
    
//    var user3 = try User(userId: "2",password: "Kunal@123", loginStatus: LoginStatus.Valid)

    //Add administrator
    
    var admin1 = try Administration(userId: "3",password: "kunal@123",adminName: "Kunal",email: "Kunal@123mail",loginStatus: LoginStatus.Valid)
    
    // Creating Products
    let product1 = Product(productId: 1,productName: ProductName.CD,unitCost: 100,quantity: 20)
    let product2 = Product(productId: 2,productName: ProductName.DVD,unitCost: 100,quantity: 20)
    let product3 = Product(productId: 3,productName: ProductName.IPHONE,unitCost: 100,quantity: 20)
    let product4 = Product(productId: 4,productName: ProductName.Hard_Disk,unitCost: 100,quantity: 20)
    let product5 = Product(productId: 5,productName: ProductName.LED_Monitor,unitCost: 100,quantity: 20)
    
    var products = [Product]()
    products.append(product1!)
    products.append(product2!)
    products.append(product3!)
    products.append(product4!)
    products.append(product5!)
    
    //Update the product by administrator
    let prodToBeUpdated = Product(productId: 1,productName: ProductName.CD,unitCost: 100,quantity: 20)
    if admin1!.updateCatalog(products: products,updProduct: prodToBeUpdated!) {
        print("Product Updated Succesfully")
    }
    
    
    
    
    
    //AddCustomer
    var customer1 = Customers()
    
    
    try customer1.registerCustomer1(customerId: "4", customerName: "Jagmeet Kaur", address: "abc",email: "Jagmeet@gmail.com", password: "jag@123G", creditCardInfo: "123456789",shippingInfo: "address",loginStatus: .Not_Valid)
    
    //print the value of the Customer.
    customer1.printData()
}
catch OrderError.Invalid(let p){
    print(p)
}

//print the information about all the customers.
for (_,customer) in Customers.dicOfCustomers{
    print(customer.printData())
}








//do{
//
//    var c1 = try Customers(customerId: "1", customerName: "kunal Gaba", address: "706 brookmill", email: "kunal@k.com", password: "111@1212g", creditCardInfo: "12werer45", shippingInfo: "Toronto", loginStatus: LoginStatus.Not_Valid)
//
//
////    let c2 = try Customers(customerId: "1", customerName: "kunal Gaba", address: "706 brookmill", email: "kunal@k.com", password: "111@1212g", creditCardInfo: "12werer45", shippingInfo: "Toronto", loginStatus: LoginStatus.Verified)
//
//
//}






//



//
//c1?.shoppingCart.addCartItem(product: .Hard_Disk, quantity: 10)
//c1?.shoppingCart.addCartItem(product: .Hard_Disk, quantity: 10)
//
//var product1 = Product(productId: 1,productName: ProductName.DVD,unitCost: 100,quantity: 10)
//var product2 = Product(productId: 1,productName: ProductName.DVD,unitCost: 100,quantity: 10)

//c1?.shoppingCart.addCartItem1(product: product1!)
//c1?.shoppingCart.updateQuantity1(product: .DVD, quantity: 20)
//c1?.shoppingCart.viewCartDetails1()
//
//var shippingInfo = ShippingInfo(shippingId: "1",shippingType: "Mail",shippingCost: 200,shippingRegionId: "region_id")
//c1?.placeOrder(shippingInfo: shippingInfo)


//c1?.shoppingCart.viewCartDetails()
//print(c1!.printData())


