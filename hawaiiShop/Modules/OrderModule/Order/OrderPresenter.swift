//
//  OrderPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation

//MARK: - OrderPresenterProtocol

protocol OrderPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: OrderRouterProtocol)
    
}


//MARK: - OrderPresenterImpl

final class OrderPresenter: OrderPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : OrderRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var items         : [Order]?

    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: OrderRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router

    }
    
    
    //MARK: - Methods
    
   
}
