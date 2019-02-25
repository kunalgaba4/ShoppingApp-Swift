//
//  main.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by MacStudent on 2019-02-13.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var c1 = Customers(customerId: "1", customerName: "kunal Gaba", address: "706 brookmill", email: "kunal@k.com", password: "111@1212g", creditCardInfo: "12werer45", shippingInfo: "Toronto", loginStatus: LoginStatus.Verified,orders: [Orders] ())

c1?.shoppingCart.addCartItem(product: .Hard_Disk, quantity: 10)
c1?.shoppingCart.addCartItem(product: .Hard_Disk, quantity: 10)

print(c1!.printData())

c1?.login(userId: "1", password:"111@1212g")
