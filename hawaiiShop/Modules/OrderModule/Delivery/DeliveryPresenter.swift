//
//  DeliveryPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import Foundation


//MARK: - DeliveryPresenterProtocol

protocol DeliveryPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: DeliveryRouterProtocol)

}


//MARK: - DeliveryPresenter

final class DeliveryPresenter: DeliveryPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : DeliveryRouterProtocol?
    let dataManager   : DataManagerProtocol?
    
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: DeliveryRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router
        
    }
    
    
    //MARK: - Methods
    
    
}
