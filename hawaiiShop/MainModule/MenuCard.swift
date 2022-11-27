//
//  MenuCard.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.11.2022.
//

import Foundation
import UIKit

struct MenuCard {
    
    let image: UIImage?
    let label: String
    
}


//MARK: - Mock Data

struct MenuCardData {
    
    var cards: [MenuCard] = [
        MenuCard(image: UIImage(named: "salads")!, label: "Salads"),
        MenuCard(image: UIImage(named: "bowls")!, label: "Bowls"),
        MenuCard(image: UIImage(named: "sandwiches")!, label: "Sandwiches"),
        MenuCard(image: UIImage(named: "pizza")!, label: "Pizza"),
        MenuCard(image: UIImage(named: "drinks")!, label: "Drinks"),
        MenuCard(image: UIImage(named: "other")!, label: "Other")
    ]
}
