//
//  ShoppingCart.swift
//  Group7_W2019_MAD3004_FP
//
//  Created by sumit kumar on 16/02/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class ShoppingCart :IDisplay{
    var cartID:Int!
    var arrayProducts:[Product] = [Product]()
    
    var getArrayOfProductsInCart: [Product] {
        get{
            return arrayProducts
        }
    }
    
    var dateAdded:Date!
    
    //    private var itemsDic = [ProductName : Int]()
    //    var getItemsFromCart : [ProductName:Int]{
    //        get{
    //            return itemsDic
    //        }
    //    }
    
    init() {
    }
    
    init?(cartID: Int, dateAdded:Date, arrayProducts:[Product])
    {
        self.cartID = cartID
        self.dateAdded = dateAdded
        self.arrayProducts = arrayProducts
        
        for product in self.arrayProducts {
            product.cartQuantityDefault(cartQuantity: 1)
        }
        
    }
    
    func addCartItem1(cartID: Int, dateAdded:Date,product: Product) throws {
        self.cartID=cartID
        self.dateAdded=dateAdded
        if arrayProducts.allSatisfy({$0.getProductID != product.getProductID}) {
            arrayProducts.append(product)
        }
        else{
            throw OrderError.Invalid("Product is already in the cart")
        }
    }
    
    func updateQuantity1(product: ProductName,quantity: Int ){
        if arrayProducts.allSatisfy({$0.getProductName!.rawValue == product.rawValue}) {
            for a in arrayProducts{
                if(a.getProductName!.rawValue == product.rawValue){
                    a.updateQuantity(newQuantity: quantity)
                }
            }
        }else{
            print("Item is not available in the cart")
        }
    }
    
    
    func viewCartDetails1(){
        for a in arrayProducts{
            print(a.getProductQuantity!)
        }
    }
    
    func checkOut1(){
        if arrayProducts.isEmpty{
            print("Shopping cart is empty")
        }else{
            print("Checking Out")
        }
    }
    
    static func getShoppingCart() -> ShoppingCart{
        return ShoppingCart()
    }
    
    func printData() {
        if let c = cartID {
            print("Cart Id \(c)")
        }
        if let d=dateAdded {
            print("Date Added \(d)")
        }
    
        for product in self.arrayProducts {
            product.display()
        }
    }
    
    
    //    func addCartItem(product: Products,quantity: Int){
    //        if itemsDic.keys.contains(product){
    //            print("The Product is already in the card, so it's quantity is increased.")
    //            itemsDic[product] = itemsDic[product]!+quantity
    //        }else{
    //            itemsDic[product]=quantity
    //            print("Product is added to the cart")
    //        }
    //    }
    //
    //    func updateQuantity(product: Products,quantity: Int){
    //        addCartItem(product: product, quantity: quantity)
    //    }
    //
    //    func viewCartDetails(){
    //        for (product, quantity) in itemsDic{
    //            print(product, quantity)
    //        }
    //
    //    }
    //
    //    func checkOut(){
    //        if itemsDic.isEmpty{
    //            print("Shopping cart is empty")
    //        }else{
    //            print("Checking Out")
    //        }
    //    }
    
    
}
