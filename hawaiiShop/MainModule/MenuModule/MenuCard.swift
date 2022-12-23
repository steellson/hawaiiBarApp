//
//  MenuCard.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 06.12.2022.
//

import Foundation
import UIKit

struct MenuCard {
    
    var image: UIImageView?
    var label: String
    var weight: String
    var price: String
    
}

struct MenuCardData {
    
    static var cards: [MenuCard] = [
        MenuCard(image: UIImageView(image: UIImage(named: "s_shrimps")), label: "Shrimps salad", weight: "270 g", price: "21 $"),
        MenuCard(image: UIImageView(image: UIImage(named: "s_chicken")), label: "Chicken salad", weight: "340 g", price: "10 $"),
        MenuCard(image: UIImageView(image: UIImage(named: "s_veg")), label: "Veg salad", weight: "300 g", price: "8 $"),
        MenuCard(image: UIImageView(image: UIImage(named: "s_1")), label: "Salad 1", weight: "280 g", price: "12 $"),
        MenuCard(image: UIImageView(image: UIImage(named: "s_2")), label: "Salad 2", weight: "320 g", price: "15 $"),
        MenuCard(image: UIImageView(image: UIImage(named: "s_3")), label: "Salad 3", weight: "360", price: "17 $")
    ]
    
}
