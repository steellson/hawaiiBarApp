//
//  MainRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit

//MARK: - MainRouter Protocol

protocol MainMenuRouterProtocol: Router {
    var moduleBuilder        : MainMenuModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: MainMenuModuleBuilderProtocol?)
    
    func initialView()
    func showMenuViewController()
    func showMenuDetailViewController()
    func goBack()
}



//MARK: - MainRouterImpl

class MainMenuRouter: MainMenuRouterProtocol {
    
    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : MainMenuModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: MainMenuModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    
//MARK: - Methods
    
    func initialView() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let mainViewController  = moduleBuilder.buildMainViewController(router: self)
            navigationController.viewControllers = [mainViewController]
        }
    }
    
    func showMenuViewController() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let menuViewController  = moduleBuilder.buildMenuViewController(router: self)
            navigationController.pushViewController(menuViewController, animated: true)
        }
    }
    
    func showMenuDetailViewController() {
        if let navigationController  = navigationController, let moduleBuilder = moduleBuilder {
            let menuViewController   = moduleBuilder.buildMenuDetailViewController(router: self)
        
            navigationController.present(menuViewController, animated: true)
        }
    }
    
    func goBack() {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        }
    }
}
