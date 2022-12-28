//
//  OrdersHistoryModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - OrdersHistoryModuleBuilder Protocol

protocol OrdersHistoryModuleBuilderProtocol: ModuleBuilder {
    func buildOrdersHistoryViewController(router: OrdersHistoryRouterProtocol) -> MainView

}


//MARK: OrdersHistoryModuleBuilderImpl

final class OrdersHistoryModuleBuilder: OrdersHistoryModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .ordersHistory
    
   public func buildOrdersHistoryViewController(router: OrdersHistoryRouterProtocol) -> MainView {
        let view        = OrdersHistoryView()
        let dataManager = DataManager()
        let presenter   = OrdersHistoryPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }
    
}
