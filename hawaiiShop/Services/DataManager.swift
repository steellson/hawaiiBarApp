//
//  DataManager.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit

//MARK: - Data Type Enum

enum DataType {
    case mainMenuCards
    case menuCards
    case itemCard
    case cartItems
}

//MARK: - DataManager Protocol

protocol DataManagerProtocol {
    func getData(type: DataType, completion: @escaping ([Any?]) -> Void)
}


//MARK: - DataManagerImpl

class DataManager: DataManagerProtocol {
    
    func getData(type: DataType, completion: @escaping ([Any?]) -> Void) {
        
        DispatchQueue.main.async {
            switch type {
                
            case .mainMenuCards:
                let data: [MainMenuCard] = [
                    MainMenuCard(image: UIImageView(image: UIImage(named: "salads")!), label: "Salads"),
                    MainMenuCard(image: UIImageView(image: UIImage(named: "bowls")!), label: "Bowls"),
                    MainMenuCard(image: UIImageView(image: UIImage(named: "sandwiches")!), label: "Sandwiches"),
                    MainMenuCard(image: UIImageView(image: UIImage(named: "pizza")!), label: "Pizza"),
                    MainMenuCard(image: UIImageView(image: UIImage(named: "drinks")!), label: "Drinks"),
                    MainMenuCard(image: UIImageView(image: UIImage(named: "other")!), label: "Other")
                ]
                completion(data)
                
            case .menuCards:
                let data: [MenuCard] = [
                    MenuCard(image: UIImageView(image: UIImage(named: "s_shrimps")), label: "Shrimps salad", weight: "270 g", price: "21 $"),
                    MenuCard(image: UIImageView(image: UIImage(named: "s_chicken")), label: "Chicken salad", weight: "340 g", price: "10 $"),
                    MenuCard(image: UIImageView(image: UIImage(named: "s_veg")), label: "Veg salad", weight: "300 g", price: "8 $"),
                    MenuCard(image: UIImageView(image: UIImage(named: "s_1")), label: "Salad 1", weight: "280 g", price: "12 $"),
                    MenuCard(image: UIImageView(image: UIImage(named: "s_2")), label: "Salad 2", weight: "320 g", price: "15 $"),
                    MenuCard(image: UIImageView(image: UIImage(named: "s_3")), label: "Salad 3", weight: "360", price: "17 $")
                ]
                completion(data)
                
            case .itemCard:
                let data = MenuDetailCard(titleLabel: "Cherry pizza", imageView: UIImageView(image: UIImage(named: "pizza")),
                                          descriptionLabel: "Crunchy dough, cherry tomato, \nProsciutto, spinat and mozarella cheese",
                                          weightLabel: "630 g", priceLabel: "17 $")
                completion([data])
                
            case .cartItems:
                let data: [CartItem] = [
                    CartItem(imageView: UIImageView(image: UIImage(named: "bowls")), nameLabel: "Chicken Breast Bowl", priceLabel: "16 $"),
                    CartItem(imageView: UIImageView(image: UIImage(named: "bowls")), nameLabel: "Tuna Bowl", priceLabel: "12 $"),
                    CartItem(imageView: UIImageView(image: UIImage(named: "pizza")), nameLabel: "Shrimps Pizza", priceLabel: "24 $")
                ]
                completion(data)
            }
        }
    }
}



