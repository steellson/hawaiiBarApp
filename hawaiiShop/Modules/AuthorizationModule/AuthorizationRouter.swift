//
//  AuthorizationProtocol.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit


//MARK: - AuthorizationRouter Protocol

protocol AuthorizationRouterProtocol: Router {
    var moduleBuilder        : AuthorizationModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: AuthorizationModuleBuilderProtocol?)
    
    func initialView()

}



//MARK: - AuthorizationRouterImpl

final class AuthorizationRouter: AuthorizationRouterProtocol {
    
    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : AuthorizationModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: AuthorizationModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    
//MARK: - Methods
    
    func initialView() {
        if let navigationController = navigationController, let moduleBuilder = moduleBuilder {
            let mainViewController  = moduleBuilder.buildAuthorizationViewController(router: self)
            navigationController.viewControllers = [mainViewController]
        }
    }

}
