//
//  Products.swift
//  IosProject
//  Copyright © 2019 Camy. All rights reserved.
//

import Foundation
class Products
{
let productid:String
var productFImage:String
var productBImage:String
var productName:String
var productBrand : String
var productDescription : String
var productPrice:Float
var productQuantity:Int

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
}
