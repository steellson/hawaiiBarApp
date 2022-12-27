//
//  MainViewProtocol.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.12.2022.
//

import Foundation

//MARK: - MainMenuView Protocol

protocol MainViewProtocol: AnyObject {
    func success()
    func failure(error: Error)
}
