//
//  PaymentRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit

//MARK: - PaymentRouter Protocol

protocol PaymentRouterProtocol: Router {
    var moduleBuilder        : PaymentModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: PaymentModuleBuilderProtocol?)
    
    func initialView()
    func goBack()
}



//MARK: - PaymentRouterImpl

final class PaymentRouter: PaymentRouterProtocol {
    
    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : PaymentModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: PaymentModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    
//MARK: - Methods
    
    func initialView() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let paymentViewController  = moduleBuilder.buildPaymentViewController(router: self)
            navigationController.viewControllers = [paymentViewController]
        }
    }
    
    func goBack() {
        if let navigationController = navigationController {
            navigationController.popViewController(animated: true)
        }
    }
}
