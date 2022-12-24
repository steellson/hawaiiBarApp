//
//  DataManager.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit

enum DataType {
    case mainMenuCards
    case menuCards
    case itemCard
}

protocol DataManagerProtocol {
    func getData(type: DataType, completion: @escaping ([Any?]) -> Void)
}

class DataManager: DataManagerProtocol {
    
    func getData(type: DataType, completion: @escaping ([Any?]) -> Void) {
        
        DispatchQueue.main.async {
            switch type {
            case .mainMenuCards:
                let data = MainMenuCardData.cards
                completion(data)
            case .menuCards:
                let data = MenuCardData.saladCards
                completion(data)
            case .itemCard:
                let data = MenuDetailCard(titleLabel: "Cherry pizza", imageView: UIImageView(image: UIImage(named: "pizza")),
                                          descriptionLabel: "Crunchy dough, cherry tomato, \nProsciutto, spinat and mozarella cheese",
                                          weightLabel: "630 g", priceLabel: "17 $")
                completion([data])
            }
        }
    }
}



