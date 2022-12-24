//
//  MainModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit


//MARK: - MainMenuModuleBuilder Protocol

protocol MainMenuModuleBuilderProtocol: ModuleBuilder {
    func buildMainViewController(router: MainRouterProtocol) -> UIViewController
    func buildMenuViewController(router: MainRouterProtocol) -> UIViewController
    func buildMenuDetailViewController(router: MainRouterProtocol) -> UIViewController
}


//MARK: MainMenuModuleBuilderImpl

class MainMenuModuleBuilder: MainMenuModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .main
    
   public func buildMainViewController(router: MainRouterProtocol) -> UIViewController {
        let view        = MainViewController()
        let dataManager = DataManager()
        let presenter   = MainPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    public func buildMenuViewController(router: MainRouterProtocol) -> UIViewController {
        let view        = MenuViewController()
        let dataManager = DataManager()
        let presenter   = MenuPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildMenuDetailViewController(router: MainRouterProtocol) -> UIViewController {
        let view        = MenuDetailViewController()
        let dataManager = DataManager()
        let presenter   = MenuDetailPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
