//
//  PaymentModuleBuilder.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - PaymentModuleBuilder Protocol

protocol PaymentModuleBuilderProtocol: ModuleBuilder {
    func buildPaymentViewController(router: PaymentRouterProtocol) -> MainView
  
}


//MARK: PaymentModuleBuilderImpl

final class PaymentModuleBuilder: PaymentModuleBuilderProtocol {
    
    var typeOfCurrentModule: ModulesType = .payment
    
   public func buildPaymentViewController(router: PaymentRouterProtocol) -> MainView {
        let view        = PaymentView()
        let dataManager = DataManager()
        let presenter   = PaymentPresenter(view: view, dataManager: dataManager, router: router)
        view.presenter  = presenter
        return view
    }

}
