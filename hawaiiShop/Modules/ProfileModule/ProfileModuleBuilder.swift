//
//  ProfileModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - ProfileModuleBuilder Protocol

protocol ProfileModuleBuilderProtocol: ModuleBuilder {
    func buildOrdersView(router: ProfileRouterProtocol) -> MainController
}


//MARK: ProfileModuleBuilderImpl

final class ProfileModuleBuilder: ProfileModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .profile
    
    public func buildOrdersView(router: ProfileRouterProtocol) -> MainController {
        let view        = ProfileController()
        let dataManager = DataManager()
        let presenter   = ProfilePresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
