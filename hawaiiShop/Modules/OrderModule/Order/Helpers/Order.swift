//
//  Order.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import Foundation
import UIKit


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

