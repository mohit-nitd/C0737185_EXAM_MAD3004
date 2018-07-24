//
//  Product.swift
//  C0737185
//
//  Created by MacStudent on 2018-07-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class product: manufacture
{
    var productId: Int!
    var productName: String!
    var productCost: Double!
    var productQuantity: Int!
    
    
    init(manufacturerid: Int, manufacturername: String, productid:Int, productname: String, productprice: Double, productquantity: Int )
    {
        self.productId = productid
        self.productName = productname
        self.productCost = productprice
        self.productQuantity = productquantity
        super.init(manufacturerid: manufacturerid, manufacturername: manufacturername)
    }
    
    func display()
    {
        
        print(productId!,"\t\t",productName!,"\t\t",productCost!,"\t\t",productQuantity!)
    }
    
}
