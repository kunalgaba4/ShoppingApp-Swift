//
//  main.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-13.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var c1 = Customers(customerId: 1, customerName: "kunal Gaba", address: "706 brookmill", email: "kunal@k.com", password: "111@ghhhh", creditCardInfo: "12werer45", shippingInfo: "Toronto", loginStatus: LoginStatus.Verified)


//var s1 = ShoppingCart(cartId: 1, productId: 1, quantity: 1, dateAdded: Date())


var u1 = User(userId: 1, password: "erd", loginStatus: LoginStatus.Verified)





//Products added

/*var product1 = Product(productId: 101, productName: "Hard Disk", price: 1000)
var product2 = Product(productId: 102, productName: "Monitor", price: 15000)
var product3 = Product(productId: 103, productName: "ZIP Drive", price: 100)
var product4 = Product(productId: 104, productName: "Floppy Disk", price: 200)

print("**---------Products Available-----------**")

product1.printData()
product2.printData()
product3.printData()
product4.printData()

print("**---------------------------------------**")

*/

var o1 = OrderDetails(orderId: 101, dateCreated: Date(), dateShipped: Date(), customerId: 102, customerName: "Jagmeet", status: "gfhghghj", shippingId: "2222", productId: 501, productName: "Monitor", quantity: 2, unitCost: 100)
o1.printData()
var a = o1.calcPrice()
print(a)

var o2 = OrderDetails(orderId: 102, dateCreated: Date(), dateShipped: Date(), customerId: 201, customerName: "Sam", status: "ghghgjhgj", shippingId: "566666", productId: 502, productName: "Hard Disk", quantity: 3, unitCost: 300)
o2.printData()
var b = o2.calcPrice()
print(b)

