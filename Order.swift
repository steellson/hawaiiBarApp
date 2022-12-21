//
//  Order.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import Foundation
import UIKit


//MARK: - Order Status Enum

enum OrderStatus: String, CaseIterable {
    case Active
    case Completed
}


//MARK: - Order

struct Order {
    
    let image         : UIImage?
    let title         : String
    let price         : String
    var count         : String
    
    var address       : String
    var time          : String
    var paymentMethod : PaymentMethods
    var status        : OrderStatus
    
}

//MARK: - MOCK DATA

struct OrderData {
    
    static var items: [Order] = [
        Order(image: UIImage(named: "bowls"), title: "Chicken Breast Bowl", price: "16 $", count: "1 dish",
              address: "Address: Berlin, Hauptbahnhof, Europaplatz 1.", time: "Order time: 2022.03.16 12:00",
              paymentMethod: .Card, status: .Completed),
        Order(image: UIImage(named: "bowls") ,title: "Tuna Bowl", price: "12 $", count: "1 dish",
              address: "", time: "", paymentMethod: .Card, status: .Completed),
        Order(image: UIImage(named: "pizza"), title: "Shrimps Pizza", price: "24 $", count: "1 dish",
              address: "", time: "", paymentMethod: .Card, status: .Completed)
    ]
    
}
