//
//  PaymentPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation

//MARK: - Payment Methods Enum

enum PaymentMethods: String, CaseIterable {
    case Card
    case Cash
}

//MARK: - PaymentPresenterProtocol

protocol PaymentPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: PaymentRouterProtocol)
    
}


//MARK: - PaymentPresenter

final class PaymentPresenter: PaymentPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : PaymentRouterProtocol?
    let dataManager   : DataManagerProtocol?
    
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: PaymentRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router
        
    }
    
    
    //MARK: - Methods
  
    
}
