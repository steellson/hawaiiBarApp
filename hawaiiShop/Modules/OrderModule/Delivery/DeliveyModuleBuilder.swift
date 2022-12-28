//
//  DeliveryModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - DeliveryModuleBuilder Protocol

protocol DeliveryModuleBuilderProtocol: ModuleBuilder {
    func buildDeliveryViewController(router: DeliveryRouterProtocol) -> MainController
   
}


//MARK: DeliveryModuleBuilderImpl

final class DeliveryModuleBuilder: DeliveryModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .delivery
    
   public func buildDeliveryViewController(router: DeliveryRouterProtocol) -> MainController {
        let view        = DeliveryController()
        let dataManager = DataManager()
        let presenter   = DeliveryPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
