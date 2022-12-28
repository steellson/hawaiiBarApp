//
//  MainModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation


//MARK: - MainMenuModuleBuilder Protocol

protocol MainMenuModuleBuilderProtocol: ModuleBuilder {    
    func buildMainViewController(router: MainMenuRouterProtocol) -> MainView
    func buildMenuViewController(router: MainMenuRouterProtocol) -> MainView
    func buildMenuDetailViewController(router: MainMenuRouterProtocol) -> MainView
}


//MARK: MainMenuModuleBuilderImpl

final class MainMenuModuleBuilder: MainMenuModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .main
    
   public func buildMainViewController(router: MainMenuRouterProtocol) -> MainView {
        let view        = MainMenuView()
        let dataManager = DataManager()
        let presenter   = MainMenuPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    public func buildMenuViewController(router: MainMenuRouterProtocol) -> MainView {
        let view        = MenuView()
        let dataManager = DataManager()
        let presenter   = MainMenuPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildMenuDetailViewController(router: MainMenuRouterProtocol) -> MainView {
        let view        = MenuDetailView()
        let dataManager = DataManager()
        let presenter   = MainMenuPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
