//
//  Cart.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

struct CartItem {
    
    var imageView: UIImageView?
    var nameLabel: String
    var priceLabel: String
    
}


struct CartData {
    
    static var items: [CartItem] = [
        CartItem(imageView: UIImageView(image: UIImage(named: "bowls")), nameLabel: "Chicken Breast Bowl", priceLabel: "16 $"),
        CartItem(imageView: UIImageView(image: UIImage(named: "bowls")), nameLabel: "Tuna Bowl", priceLabel: "12 $"),
        CartItem(imageView: UIImageView(image: UIImage(named: "pizza")), nameLabel: "Shrimps Pizza", priceLabel: "24 $")
    ]
    
}
