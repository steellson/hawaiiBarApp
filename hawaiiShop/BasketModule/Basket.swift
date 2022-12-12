//
//  Basket.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 09.12.2022.
//

import Foundation
import UIKit

struct BasketItem {
    var imageView: UIImageView
    var nameLabel: String
    var priceLabel: String
}

struct BasketData {
    static var basketItems: [BasketItem] = [
        BasketItem(imageView: UIImageView(image: UIImage(named:"bowl")), nameLabel: "Chicken Breast Bowl", priceLabel: "16 $"),
        BasketItem(imageView: UIImageView(image: UIImage(named: "bowl")), nameLabel: "Tuna Bowl", priceLabel: "12 $"),
        BasketItem(imageView: UIImageView(image: UIImage(named: "pizza")), nameLabel: "Shrimps Pizza", priceLabel: "24 $")
    ]
}
