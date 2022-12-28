//
//  AuthorizationPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import Foundation

//MARK: - AuthorizationPresenterProtocol

protocol AuthorizationPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: AuthorizationRouterProtocol)
    
}


//MARK: - AuthorizationPresenterImpl

final class AuthorizationPresenter: AuthorizationPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MainViewProtocol?
    let router        : AuthorizationRouterProtocol?
    let dataManager   : DataManagerProtocol?
 
    
    //MARK: - Init
    
    required init(view: MainViewProtocol, dataManager: DataManagerProtocol, router: AuthorizationRouterProtocol) {
        self.view        = view
        self.dataManager = dataManager
        self.router      = router

    }
    
    
    //MARK: - Methods
    
   
}
