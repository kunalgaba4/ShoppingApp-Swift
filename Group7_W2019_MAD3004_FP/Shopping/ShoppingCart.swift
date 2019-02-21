//
//  ShoppingCart.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShoppingCart{
    var cartId: Int
    var productId: Int
    var quantity: Int
    var dateAdded: Int
    
    init(cartId : Int, productId : Int, quantity : Int , dateAdded : Int ) {
        self.cartId = cartId
        self.productId = productId
        self.quantity = quantity
        self.dateAdded = dateAdded
    }
    
    func addCartItem(){
    
    }
    
    func updateQuantity(){
    
    }
    
    func viewCartDetails(){
    
    }
    
    func checkOut(){
    
    }
}
