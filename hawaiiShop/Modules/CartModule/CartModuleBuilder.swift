//
//  CartModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation


//MARK: - CartModuleBuilder Protocol

protocol CartModuleBuilderProtocol: ModuleBuilder {
    func buildCartViewController(router: CartRouterProtocol) -> MainView
    func buildVEmptyCartViewController(router: CartRouterProtocol) -> MainView
}


//MARK: MainMenuModuleBuilderImpl

final class CartModuleBuilder: CartModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .cart
    
    
//MARK: - Methods
    
    func buildCartViewController(router: CartRouterProtocol) -> MainView {
        let view        = CartView()
        let dataManager = DataManager()
        let presenter   = CartPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildVEmptyCartViewController(router: CartRouterProtocol) -> MainView {
        let view        = CartEmptyView()
        let dataManager = DataManager()
        let presenter   = CartPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    
}
