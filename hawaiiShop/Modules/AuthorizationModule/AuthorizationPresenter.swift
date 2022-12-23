//
//  AuthorizationPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import Foundation

//MARK: - Protocols

protocol AuthorizationViewProtocol: AnyObject {
    func showCurrent()
}

protocol AuthorizationPresenterProtocol: AnyObject {
    init(view: AuthorizationViewProtocol)
    func presentCurrent()
}

//MARK: - Main Presenter

class AuthorizationPresenter: AuthorizationPresenterProtocol {
    
    weak var view: AuthorizationViewProtocol!
    
    required init(view: AuthorizationViewProtocol) {
        self.view = view
    }
    
    func presentCurrent() {
        //
    }
    
    
}
