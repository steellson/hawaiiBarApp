//
//  OrdersHistory+Extension.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit

extension OrdersHistoryItem {
    
    
    //MARK: - Mock Data
    
    static var items: [OrdersHistoryItem] = [
        OrdersHistoryItem(id: "#227165",
                          status: .Active,
                          image: UIImage(systemName: "cart.circle"),
                          time: "Order time: 2022.03.16 12:00",
                          items: ["1","2","3"],
                          amount: "52 $"),
        OrdersHistoryItem(id: "#227187",
                          status: .Completed,
                          image: UIImage(systemName: "cart.circle"),
                          time: "Order time: 2022.03.18 16:00",
                          items: ["1","2","3"],
                          amount: "52 $"),
        OrdersHistoryItem(id: "#227186",
                          status: .Completed,
                          image: UIImage(systemName: "cart.circle"),
                          time: "Order time: 2022.03.19 16:00",
                          items: ["1","2","3"],
                          amount: "63 $")
    ]
}
