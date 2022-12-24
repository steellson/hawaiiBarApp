//
//  MainRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit

class MainRouter: RouterProtocol {
    
    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : ModuleBuilderProtocol?
    
    
//MARK: - Methods
    
    func initialView() {
        if let navigationController = navigationController {
            let mainViewController  = MainViewController()
            navigationController.present(mainViewController, animated: true)
        }
    }
    
    func showMenuViewController(_ menuCardItems: [MenuCard]?) {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            guard let menuCardItems = menuCardItems else { return }
            let menuViewController  = moduleBuilder.buildMenuViewController(router: self, menuCardItems: menuCardItems)
            navigationController.pushViewController(menuViewController, animated: true)
        }
    }
    
    func showMenuDetailViewController(_ menuDetailCard: MenuDetailCard?) {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            guard let menuDetailCard = menuDetailCard else { return }
            let menuViewController  = moduleBuilder.buildMenuDetailViewController(router: self, menuDetailCard: menuDetailCard)
            navigationController.pushViewController(menuViewController, animated: true)
        }
    }
    
    func goBack() {
        if let navigationController = navigationController {
            navigationController.dismiss(animated: true)
        }
    }
    
    
}
