//
//  OrdersHistoryItem.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit


struct OrdersHistoryItem {
    
    let id      : String
    let status  : Order.OrderStatus
    let image   : UIImage?
    let time    : String
    let items   : [String]
    let amount  : String
    
}

