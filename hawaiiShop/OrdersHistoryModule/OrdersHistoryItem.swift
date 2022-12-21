//
//  OrdersHistoryItem.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit


//MARK: - OrdersHistoryItem

struct OrdersHistoryItem {
    
    let id      : String
    let status  : OrderStatus
    let image   : UIImage?
    let time    : String
    let items   : [String]
    let amount  : String
    
}

//MARK: - MOCK DATA

struct OrdersHistoryData {
    
    static var items: [OrdersHistoryItem] = [
        OrdersHistoryItem(id: "#227165", status: .Active, image: UIImage(systemName: "cart.circle"),
                          time: "Order time: 2022.03.16 12:00", items: ["1","2","3"], amount: "52 $"),
        OrdersHistoryItem(id: "#227187", status: .Completed, image: UIImage(systemName: "cart.circle"),
                          time: "Order time: 2022.03.18 16:00", items: ["1","2","3"], amount: "52 $"),
        OrdersHistoryItem(id: "#227186", status: .Completed, image: UIImage(systemName: "cart.circle"),
                          time: "Order time: 2022.03.19 16:00", items: ["1","2","3"], amount: "63 $")
    ]
}
