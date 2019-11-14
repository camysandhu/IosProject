//
//  Cart.swift
//  IosProject
//  Copyright © 2019 Camy. All rights reserved.
//

import Foundation

class Cart
{
    private var cartid:Int?
    var productid:String?
    var quantity:Int?
    var totalPrice = Int()
    var paymentMethod = false
    
     var productList = [Products]()
     var orderedProductList = [Array<Products>]()
    
     init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()

    }
    init(productid:String,cartid:Int,quantity:Int,dateadded:Date)
    {
        self.productid=productid
        self.cartid=cartid
        self.quantity=quantity

    }
    
    
}
