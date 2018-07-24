//
//  Order.swift
//  C0737185
//
//  Created by MacStudent on 2018-07-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class order
{
    var orderID : Int!
    var orderTotal : Double!
    var productarray : [product] = []
    var orderDate : Date!
    
    
    
       init(orderid:Int,  orderTotal : Double!,  productarray: [product]) {
        orderID = orderid
        self.orderTotal = orderTotal
        self.productarray = productarray
    }
    
}
