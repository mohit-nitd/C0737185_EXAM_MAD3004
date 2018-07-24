//
//  main.swift
//  C0737185
//
//  Created by MacStudent on 2018-07-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


var productOne = product(manufacturerid: 1, manufacturername: "pritesh", productid: 5000, productname: "iphone7" , productprice: 9120, productquantity: 120)
var productTwo = product(manufacturerid: 2, manufacturername: "kaushal", productid: 5001, productname: "iphone8" , productprice: 4101, productquantity: 130)
var productThree = product(manufacturerid: 3, manufacturername: "satnam", productid: 5002, productname: "samsung" , productprice: 3300, productquantity: 410)
var productFour = product(manufacturerid: 4, manufacturername: "Mohit", productid: 5003, productname: "sony" , productprice: 1000, productquantity: 810)
var productFive = product(manufacturerid: 5, manufacturername: "Sim", productid: 5004, productname: "windows" , productprice: 500, productquantity: 101)
var productSix  =  product(manufacturerid: 6, manufacturername: "jasoreet", productid: 5005, productname: "microspft", productprice: 400, productquantity: 550)


var productOrder1 : [product] = [productOne,productThree,productFour]
var productOrder2 : [product] = [productThree,productTwo,productFive]
var productOrder3 : [product] = [productOne,productTwo,productThree,productFour,productFive]
var productOrder4 : [product] = [productFive,productTwo,productSix]


var objectOne = order(orderid: 101, orderTotal: 4000,  productarray: [productOne,productTwo,productThree])
var objectTwo = order(orderid: 102, orderTotal: 20000,  productarray: [productTwo,productFour,productFive])
var objectThree = order(orderid: 103, orderTotal: 30000,  productarray: [productOne,productTwo,productThree,productFour,productFive])
var objectFour = order(orderid: 104, orderTotal: 5008, productarray: [productSix,productFour,productThree,productFive])





let date = Date()
let formatter = DateFormatter()
//Give the format you want to the formatter:

formatter.dateFormat = "dd.MM.yyyy"
//Get the result string:

let orderDate = formatter.string(from: date)

var orderDictionary = [101:objectOne , 102:objectTwo , 103:objectThree,104:objectFour]

print("Please Enter Order Number:-")
var A:Int!
A = Int(readLine()!)
switch A
{
case 101:
    print("\n\nOrderId \tTotalOrderCost  ")
    print(orderDictionary[101]?.orderID ?? "" , orderDictionary[101]?.orderTotal ?? "")
    print("Order Date is  \(orderDate)")
    print("\n\nproductId productName productCost productQuantity ")
    for product in productOrder1
    {
        print(product.display())
    }
case 102:
    
    
    print("\n\nOrderId  TotalOrderCost  ")
    print(orderDictionary[102]?.orderID ?? "" , orderDictionary[102]?.orderTotal ?? "")
    print("Order Date is  \(orderDate)")
    print("\n\nproductId productname productCost productQuantity ")
    for product in productOrder2
    {
        print(product.display())
    }
case 103:
    print("\n\nOrderId  TotalOrderCost  ")
    print(orderDictionary[103]?.orderID ?? "" , orderDictionary[103]?.orderTotal ?? "")
    print("Order Date is  \(orderDate)")
    print("\n\nproductId productName productCost productQuantity ")
    for product in productOrder3
    {
        print(product.display())
    }
    
case 104:
    print("\n\nOrderId  TotalOrderCost  ")
    print(orderDictionary[104]?.orderID ?? "" , orderDictionary[104]?.orderTotal ?? "")
    print("Order Date is  \(orderDate)")
    print("\n\nproductId productName productCost productQuantity ")
    for product in productOrder4
    {
        print(product.display())
    }
default:
    print("Enter Correct Value ")
}



