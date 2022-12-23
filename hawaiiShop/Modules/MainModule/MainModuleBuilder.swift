//
//  MainModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit

class MainModuleBuilder: ModuleBuilderProtocol {
    
    func buildMainViewController(router: RouterProtocol) -> UIViewController {
        let view        = MainViewController()
        let router      = MainRouter()
        let dataManager = DataManager()
        let presenter   = MainPresenter(view: view, router: router, dataManager: dataManager)
        view.presenter  = presenter
        return view
    }
    
    func buildMenuViewController(router: RouterProtocol, menuCardItem: MenuCard) -> UIViewController {
        let view       = MenuViewController()
//        let router     = MenuRouter()
//        let presenter  = MenuPresenter(view: view, router: router, menuCardItem: menuCardItem)
//        view.presenter = presenter
        return view
    }
    
    
}
