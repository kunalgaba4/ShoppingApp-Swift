//
//  ShoppingCart.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShoppingCart{
     var arrayProducts:[Product] = [Product]()
    private var itemsDic = [Products : Int]()
    var getItemsFromCart : [Products:Int]{
        get{
            return itemsDic
        }
    }
    
    init() {
    }
    
    
    func addCartItem1(product: Product) {
        if arrayProducts.allSatisfy({$0.getProductID != product.getProductID}) {
            arrayProducts.append(product)
        }
        else{
            print("Product Already In Cart")
        }

    }
    
    func updateQuantity1(product: Products,quantity: Int ){
        if arrayProducts.allSatisfy({$0.getProductName!.rawValue == product.rawValue}) {
                
        }
        else{
            print("Product Already In Cart")
        }
        
    }
    
    
    func addCartItem(product: Products,quantity: Int){
        if itemsDic.keys.contains(product){
            print("The Product is already in the card, so it's quantity is increased.")
            itemsDic[product] = itemsDic[product]!+quantity
        }else{
            itemsDic[product]=quantity
            print("Product is added to the cart")
        }
    }
    
    func updateQuantity(product: Products,quantity: Int){
        addCartItem(product: product, quantity: quantity)
    }
    
    func viewCartDetails(){
        for (product, quantity) in itemsDic{
            print(product, quantity)
        }
    
    }
    
    func checkOut(){
        if itemsDic.isEmpty{
            print("Shopping cart is empty")
        }else{
            print("Checking Out")
        }
    }
    
    static func getShoppingCart() -> ShoppingCart{
        return ShoppingCart()
    }
}
