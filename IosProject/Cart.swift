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
    
     init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()

    }
    
    
    
}
