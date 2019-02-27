//
//  main.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-13.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var arrayOfcustomer = [Customers]()

//Add User
let user1 = try Customers(userId: "1",password: "Kunal@1234",loginStatus: LoginStatus.Valid)
arrayOfcustomer.append(user1!)

if((user1?.verifyLogin(customer: arrayOfcustomer))!){
    print("Successfully Login")
}else{
    print("Username or password is incorrect")
}

//Add administrator
var admin1 = try Administration(userId: "3",password: "kunal@123",adminName: "Kunal",email: "Kunal@123mail",loginStatus: LoginStatus.Valid)
admin1?.printData()



do{
    //AddCustomer
    let customer1 = Customers()
    try customer1.registerCustomer1(customerId: "4", customerName: "Jagmeet Kaur", address: "abc",email: "Jagmeet@gmail.com", password: "jag@123G",creditCardInfo:"123456789",shippingInfo: "address",loginStatus: .Not_Valid)
    
    //Updating Customer Profile
    customer1.customerName = "Kunal"
    customer1.address = "15 Hockley Path"
    customer1.updateProfile(customer: arrayOfcustomer)
    //Priniting Update customer Profile Information
//    customer1.printData()
    
   
    // Creating Products
    let product1 = Product(productId: 1,productName: ProductName.CD,unitCost: 100,quantity: 20)
    let product2 = Product(productId: 2,productName: ProductName.DVD,unitCost: 100,quantity: 40)
    let product3 = Product(productId: 3,productName: ProductName.IPHONE,unitCost: 100,quantity: 10)
    let product4 = Product(productId: 4,productName: ProductName.Hard_Disk,unitCost: 100,quantity: 11)
    let product5 = Product(productId: 5,productName: ProductName.LED_Monitor,unitCost: 100,quantity: 22)
    
    var products = [Product]()
    products.append(product1!)
    products.append(product2!)
    products.append(product3!)
    products.append(product4!)
    products.append(product5!)
    
    //Update the product by administrator
    let prodToBeUpdated = Product(productId: 1,productName: ProductName.CD,unitCost: 200,quantity: 20)
    if admin1!.updateCatalog(products: products,updProduct: prodToBeUpdated!) {
        print("Product Updated Succesfully")
    }

    print("Adding Items into the Cart..........")
    // Add products to Shopping Cart
    let cartProduct1 = ShoppingCart1(cartId: 1, product:product1! , dateAdded: Date())
    let cartProduct2 = ShoppingCart1(cartId: 1, product:product2! , dateAdded: Date())
    let cartProduct3 = ShoppingCart1(cartId: 1, product:product3! , dateAdded: Date())
    let cartProduct4 = ShoppingCart1(cartId: 1, product:product4! , dateAdded: Date())
    let cartProduct5 = ShoppingCart1(cartId: 1, product:product5! , dateAdded: Date())
    
    cartProduct1.addCartItem(customer: customer1)
    cartProduct2.addCartItem(customer: customer1)
    cartProduct3.addCartItem(customer: customer1)
    cartProduct4.addCartItem(customer: customer1)
    cartProduct5.addCartItem(customer: customer1)
    
    for cartDetails in customer1.shoppingCart1{
        cartDetails.printData()
    }
    
    //Update quantity
    if(cartProduct1.updateQuantity(customer: customer1, newQty: 40)){
        print("----Quantity Updated-----")
    }else{
        print("Updation Failed")
    }
    //Check the updated Quantity
    for userCartDetail in customer1.shoppingCart1{
        userCartDetail.printData()
    }
    
    //Add Shipping Information
    let shippingInfo = ShippingInfo(shippingId: "1",shippingType: "Mail",shippingCost: 200,shippingRegionId: "region_id")
    customer1.placeOrder(shippingInfo: shippingInfo)
}
catch OrderError.Invalid(let p){
    print(p)
}
