//
//  AuthorizationModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - AuthorizationModuleBuilder Protocol

protocol AuthorizationModuleBuilderProtocol: ModuleBuilder {
    func buildAuthorizationViewController(router: AuthorizationRouterProtocol) -> MainController
    
}


//MARK: AuthorizationModuleBuilderImpl

final class AuthorizationModuleBuilder: AuthorizationModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .authorization
    
   public func buildAuthorizationViewController(router: AuthorizationRouterProtocol) -> MainController {
        let view        = AuthorizationController()
        let dataManager = DataManager()
        let presenter   = AuthorizationPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
