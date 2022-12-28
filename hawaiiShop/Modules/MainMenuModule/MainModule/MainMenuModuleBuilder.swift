//
//  MainModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation


//MARK: - MainMenuModuleBuilder Protocol

protocol MainMenuModuleBuilderProtocol: ModuleBuilder {    
    func buildMainViewController(router: MainMenuRouterProtocol) -> MainController
    func buildMenuViewController(router: MainMenuRouterProtocol) -> MainController
    func buildMenuDetailViewController(router: MainMenuRouterProtocol) -> MainController
}


//MARK: MainMenuModuleBuilderImpl

final class MainMenuModuleBuilder: MainMenuModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .main
    
   public func buildMainViewController(router: MainMenuRouterProtocol) -> MainController {
        let view        = MainMenuController()
        let dataManager = DataManager()
        let presenter   = MainMenuPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    public func buildMenuViewController(router: MainMenuRouterProtocol) -> MainController {
        let view        = MenuController()
        let dataManager = DataManager()
        let presenter   = MainMenuPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildMenuDetailViewController(router: MainMenuRouterProtocol) -> MainController {
        let view        = MenuDetailController()
        let dataManager = DataManager()
        let presenter   = MainMenuPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
