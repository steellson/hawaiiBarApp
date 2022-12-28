//
//  OrdersHistoryPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - OrdersHistoryPresenterProtocol

protocol OrdersHistoryPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: OrdersHistoryRouterProtocol)
    var ordersData: [OrdersHistoryItem]? { get set }
    
}


//MARK: - OrdersHistoryPresenter

final class OrdersHistoryPresenter: OrdersHistoryPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : OrdersHistoryRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var ordersData    : [OrdersHistoryItem]?
    
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: OrdersHistoryRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router
        
    }
    
    
    //MARK: - Methods

    
}
