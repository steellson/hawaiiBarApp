//
//  CartModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation


//MARK: - CartModuleBuilder Protocol

protocol CartModuleBuilderProtocol: ModuleBuilder {
    func buildCartViewController(router: CartRouterProtocol) -> MainController
    func buildVEmptyCartViewController(router: CartRouterProtocol) -> MainController
}


//MARK: MainMenuModuleBuilderImpl

final class CartModuleBuilder: CartModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .cart
    
    
//MARK: - Methods
    
    func buildCartViewController(router: CartRouterProtocol) -> MainController {
        let view        = CartController()
        let dataManager = DataManager()
        let presenter   = CartPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildVEmptyCartViewController(router: CartRouterProtocol) -> MainController {
        let view        = CartEmptyController()
        let dataManager = DataManager()
        let presenter   = CartPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    
}
