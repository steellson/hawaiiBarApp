//
//  Delivery.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 15.12.2022.
//

import Foundation

enum DeliveryType: String, CaseIterable {
    case doorDelivery = "Door delivery"
    case pickUp       = "Pick up"
}

struct Order {
    
    var name: String?
    var adress: String?
    var phone: String?
    
    var type: DeliveryType
}
