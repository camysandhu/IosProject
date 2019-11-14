//
//  Products.swift
//  IosProject
//  Copyright © 2019 Camy. All rights reserved.
//

import Foundation
class Products
{
static let orderAccess = Products()
let productid:String
var productFImage:String
var productBImage:String
var productName:String
var productBrand : String
var productDescription : String
var productPrice:Float
var productQuantity:Int
var productdetails=Dictionary<Int,Products>()

init()
{
    self.productid = String()
    self.productName = String()
    self.productFImage = String()
    self.productBImage = String()
    self.productBrand = String()
    self.productDescription = String()
    self.productPrice = Float()
    self.productQuantity = Int()
}
    init (productid:String ,productName:String ,productBrand:String,productDescription:String, productPrice:Float,productFImage:String,productBImage:String, productQuantity:Int)
    {
        self.productid = productid
        self.productName = productName
        self.productFImage = productFImage
        self.productBImage = productBImage
        self.productBrand = productBrand
        self.productDescription = productDescription
        self.productPrice = productPrice
        self.productQuantity = Int()
    }
    
    func addproducts(pid:Int,prod:Products)
       {
           productdetails.updateValue(prod, forKey: pid)
       }
}
