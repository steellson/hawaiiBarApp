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
    func buildMainViewController(router: MainMenuRouterProtocol) -> UIViewController
    func buildMenuViewController(router: MainMenuRouterProtocol) -> UIViewController
    func buildMenuDetailViewController(router: MainMenuRouterProtocol) -> UIViewController
}


//MARK: MainMenuModuleBuilderImpl

class MainMenuModuleBuilder: MainMenuModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .main
    
   public func buildMainViewController(router: MainMenuRouterProtocol) -> UIViewController {
        let view        = MainMenuView()
        let dataManager = DataManager()
        let presenter   = MainPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    public func buildMenuViewController(router: MainMenuRouterProtocol) -> UIViewController {
        let view        = MenuView()
        let dataManager = DataManager()
        let presenter   = MainPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildMenuDetailViewController(router: MainMenuRouterProtocol) -> UIViewController {
        let view        = MenuDetailView()
        let dataManager = DataManager()
        let presenter   = MainPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
