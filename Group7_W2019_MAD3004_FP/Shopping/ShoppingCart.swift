//
//  ShoppingCart.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShoppingCart{
    
    private var itemsDic = [Products : Int]()
    
    var getItemsFromCart : [Products:Int]{
        get{
            return itemsDic
        }
    }
    init() {
    }
    
    
    func addCartItem(product: Products,quantity: Int){
        if itemsDic.keys.contains(product){
            print("The Product is already in the card, so it's quantity is increased.")
            itemsDic[product] = quantity+1
        }else{
            itemsDic[product]=quantity
            print("Product is added to the cart")
        }
    }
    
    func updateQuantity(product: Products,quantity: Int){
        addCartItem(product: product, quantity: quantity)
    }
    
    func viewCartDetails(){
        
    
    }
    
    func checkOut(){
    
    }
    
    static func getShoppingCart() -> ShoppingCart{
        return ShoppingCart()
    }
}
