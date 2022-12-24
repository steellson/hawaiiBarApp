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
        let dataManager = DataManager()
        let presenter   = MainPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
    func buildMenuViewController(router: RouterProtocol, menuCardItems: [MenuCard]?) -> UIViewController {
        let view        = MenuViewController()
        let dataManager = DataManager()
        let presenter   = MenuPresenter(view: view, dataManager: dataManager, router: router, menuCardItems: menuCardItems)
        view.presenter  = presenter
        return view
    }
    
    func buildMenuDetailViewController(router: RouterProtocol, menuDetailCard: MenuDetailCard) -> UIViewController {
        let view       = MenuDetailViewController()
//        let presenter  = MenuPresenter(view: view, menuCardItem: menuCardItem)
//        view.presenter = presenter
        return view
    }

}
