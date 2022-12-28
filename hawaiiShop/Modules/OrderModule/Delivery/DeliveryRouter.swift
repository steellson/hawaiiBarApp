//
//  DeliveryRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit

//MARK: - DeliveryRouter Protocol

protocol DeliveryRouterProtocol: Router {
    var moduleBuilder        : DeliveryModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: DeliveryModuleBuilderProtocol?)
    
    func initialView()
    func goBack()
}



//MARK: - DeliveryRouterImpl

final class DeliveryRouter: DeliveryRouterProtocol {
    
    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : DeliveryModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: DeliveryModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    
//MARK: - Methods
    
    func initialView() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let deliveryViewController  = moduleBuilder.buildDeliveryViewController(router: self)
            navigationController.viewControllers = [deliveryViewController]
        }
    }
    
    func goBack() {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        }
    }
}
