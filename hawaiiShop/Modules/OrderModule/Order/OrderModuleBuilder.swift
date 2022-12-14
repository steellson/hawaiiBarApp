//
//  OrderModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - OrderModuleBuilder Protocol

protocol OrderModuleBuilderProtocol: ModuleBuilder {
    func buildOrderViewController(router: OrderRouterProtocol) -> MainController

}


//MARK: OrderModuleBuilderImpl

final class OrderModuleBuilder: OrderModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .order
    
   public func buildOrderViewController(router: OrderRouterProtocol) -> MainController {
        let view        = OrderController()
        let dataManager = DataManager()
        let presenter   = OrderPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }


}
