//
//  Order+Extension.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit

extension Order {
    
    //MARK: - Order Status Enum
    
    enum OrderStatus: String, CaseIterable {
        case Active
        case Completed
    }
    
    
    //MARK: - MOCK DATA
    
    static var items: [Order] = [
        Order(image: UIImage(named: "bowls"),
              title: "Chicken Breast Bowl",
              price: "16 $",
              count: "1 dish",
              address: "Address: Berlin, Hauptbahnhof, Europaplatz 1.",
              time: "Order time: 2022.03.16 12:00",
              paymentMethod: .Card,
              status: .Completed),
        Order(image: UIImage(named: "bowls"),
              title: "Tuna Bowl", price: "12 $",
              count: "1 dish",
              address: "",
              time: "",
              paymentMethod: .Card,
              status: .Completed),
        Order(image: UIImage(named: "pizza"),
              title: "Shrimps Pizza",
              price: "24 $",
              count: "1 dish",
              address: "",
              time: "",
              paymentMethod: .Card,
              status: .Completed)
    ]
}
