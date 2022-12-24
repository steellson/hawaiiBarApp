//
//  CartRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation
import UIKit

//MARK: - CartRouter Protocol

protocol CartRouterProtocol: Router {
    var moduleBuilder        : CartModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: CartModuleBuilderProtocol?)
    
    func initial(with cartItem: [CartItem]?)
}


//MARK: - CartRouterImpl

class CartRouter: CartRouterProtocol {

    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : CartModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: CartModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder        = moduleBuilder
    }
    
    
//MARK: - Methods
    
    func initial(with cartItem: [CartItem]?) {
        guard let cartItem = cartItem else { return }
        if !cartItem.isEmpty {
            initialCart()
        } else {
            initialEmptyCart()
        }
    }

}


//MARK: - CartRouter Protocol Incapsulated Methods Extension

extension CartRouterProtocol {
    
    fileprivate func initialCart() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let mainViewController  = moduleBuilder.buildCartViewController(router: self)
            navigationController.viewControllers = [mainViewController]
        }
    }
    
    fileprivate func initialEmptyCart() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let mainViewController  = moduleBuilder.buildVEmptyCartViewController(router: self)
            navigationController.viewControllers = [mainViewController]
        }
    }
}
