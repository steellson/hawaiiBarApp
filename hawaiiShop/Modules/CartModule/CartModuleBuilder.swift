//
//  CartModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation
import UIKit


//MARK: - CartModuleBuilder Protocol

protocol CartModuleBuilderProtocol: ModuleBuilder {
    func buildCartViewController(router: CartRouterProtocol) -> UIViewController
    func buildVEmptyCartViewController(router: CartRouterProtocol) -> UIViewController
}


//MARK: MainMenuModuleBuilderImpl

class CartModuleBuilder: CartModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .cart
    
    
//MARK: - Methods
    
    func buildCartViewController(router: CartRouterProtocol) -> UIViewController {
        let view        = CartViewController()
        let dataManager = DataManager()
        let presenter   = CartPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildVEmptyCartViewController(router: CartRouterProtocol) -> UIViewController {
        let view        = CartEmptyViewController()
        let dataManager = DataManager()
        let presenter   = CartPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    
}
