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
    
    func showMenuViewController(_ menuCardItem: MenuCard?) {
        if let navigationController = navigationController {
            let menuViewController  = MenuViewController()
            navigationController.pushViewController(menuViewController, animated: true)
        }
    }
    
    func goBack() {
        if let navigationController = navigationController {
            navigationController.dismiss(animated: true)
        }
    }
    
    
}
