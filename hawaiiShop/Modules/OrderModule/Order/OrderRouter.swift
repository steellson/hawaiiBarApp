//
//  OrderRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit


//MARK: - MainRouter Protocol

protocol OrderRouterProtocol: Router {
    var moduleBuilder        : OrderModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: OrderModuleBuilderProtocol?)
    
    func initialView()
    func goBack()
}



//MARK: - OrderRouterImpl

final class OrderRouter: OrderRouterProtocol {
    
    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : OrderModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: OrderModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    
//MARK: - Methods
    
    func initialView() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let orderViewController  = moduleBuilder.buildOrderViewController(router: self)
            navigationController.viewControllers = [orderViewController]
        }
    }
    
    func goBack() {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        }
    }
}

