//
//  OrdersHistoryRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit


//MARK: - OrdersHistoryRouter Protocol

protocol OrdersHistoryRouterProtocol: Router {
    var moduleBuilder        : OrdersHistoryModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: OrdersHistoryModuleBuilderProtocol?)
    
    func initialView()
    func goBack()
}



//MARK: - OrdersHistoryRouterImpl

final class OrdersHistoryRouter: OrdersHistoryRouterProtocol {
    
    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : OrdersHistoryModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: OrdersHistoryModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    
//MARK: - Methods
    
    func initialView() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let ordersHistoryViewController  = moduleBuilder.buildOrdersHistoryViewController(router: self)
            navigationController.viewControllers = [ordersHistoryViewController]
        }
    }

    func goBack() {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        }
    }
}
