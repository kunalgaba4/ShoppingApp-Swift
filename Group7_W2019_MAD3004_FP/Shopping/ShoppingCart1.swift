import Foundation

class ShoppingCart1:IDisplay{
    private var cartId: Int?
    private var product: Product?
    private var dateAdded: Date
    var arrayProducts:[Product] = [Product]()
    
    var getProduct:Product?{
        get{
            return product
        }
    }
    
    init(){
        self.cartId = Int()
        self.product = Product()
        self.dateAdded = Date()
    }
    
    
    init(cartId: Int, product: Product, dateAdded: Date){
        self.cartId = cartId
        self.product = product
        self.dateAdded = dateAdded
        arrayProducts.append(product)
    }
    
    func addCartItem(customer : Customers){
        let newItems = ShoppingCart1(cartId: self.cartId!, product: self.product!, dateAdded: self.dateAdded)
        customer.shoppingCart1.append(newItems)
    }
    
    func updateQuantity(customer : Customers, newQty : Int) -> Bool{
        for c in customer.shoppingCart1{
            if c.cartId == self.cartId{
                c.product?.quantity = newQty
                self.printData()
                return true
            }
        }
        return false
    }
    
    func cartDetails(){
        for a in arrayProducts{
            print(a.getProductQuantity!)
        }
    }
    
    func checkOut() throws{
        if arrayProducts.isEmpty{
            throw OrderError.Invalid("There is nothing to checkout")
        }else{
            print("You have succeddfully checked out")
        }
    }
    
    func printData() {
        print("Cart ID: \(self.cartId!)")
        print("Product Id: \(String(describing: product!.getProductID!))")
        print("Product Name: \(String(describing: self.product!.getProductName!))")
        print("Unit Price: \(self.product!.getProductUnitCost!)")
        print("Quantity: \(String(describing: self.product!.getProductQuantity!))")
        print("Date Added: \(self.dateAdded)")
        print("------------------------------")
    }
    
}
