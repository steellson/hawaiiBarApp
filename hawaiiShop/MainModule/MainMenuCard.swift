//
//  MainMenuCard.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.11.2022.
//

import Foundation
import UIKit

struct MainMenuCard {
    
    let image: UIImageView?
    let label: String
    
}


//MARK: - Mock Data

struct MainMenuCardData {
    
    static var cards: [MainMenuCard] = [
        MainMenuCard(image: UIImageView(image: UIImage(named: "salads")!), label: "Salads"),
        MainMenuCard(image: UIImageView(image: UIImage(named: "bowls")!), label: "Bowls"),
        MainMenuCard(image: UIImageView(image: UIImage(named: "sandwiches")!), label: "Sandwiches"),
        MainMenuCard(image: UIImageView(image: UIImage(named: "pizza")!), label: "Pizza"),
        MainMenuCard(image: UIImageView(image: UIImage(named: "drinks")!), label: "Drinks"),
        MainMenuCard(image: UIImageView(image: UIImage(named: "other")!), label: "Other")
    ]
}
