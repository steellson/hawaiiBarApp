//
//  DataManager.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation

enum DataType {
    case mainMenuCards
    case menuCards
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
            }
        }
    }
}



