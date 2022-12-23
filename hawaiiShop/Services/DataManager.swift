//
//  DataManager.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation


protocol DataManagerProtocol {
    func getData(completion: @escaping ([Any?]) -> Void)
}

class DataManager: DataManagerProtocol {
    
    func getData(completion: @escaping ([Any?]) -> Void) {
        let data = MainMenuCardData.cards
        
        DispatchQueue.main.async {
            completion(data)
        }
    }
}



