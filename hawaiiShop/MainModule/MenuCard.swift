//
//  MenuCard.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.11.2022.
//

import Foundation
import UIKit

struct MenuCard {
    
    let image: UIImageView?
    let label: String
    
}


//MARK: - Mock Data

struct MenuCardData {
    
    static var cards: [MenuCard] = [
        MenuCard(image: UIImageView(image: UIImage(named: "salads")!), label: "Salads"),
        MenuCard(image: UIImageView(image: UIImage(named: "bowls")!), label: "Bowls"),
        MenuCard(image: UIImageView(image: UIImage(named: "sandwiches")!), label: "Sandwiches"),
        MenuCard(image: UIImageView(image: UIImage(named: "pizza")!), label: "Pizza"),
        MenuCard(image: UIImageView(image: UIImage(named: "drinks")!), label: "Drinks"),
        MenuCard(image: UIImageView(image: UIImage(named: "other")!), label: "Other")
    ]
}
