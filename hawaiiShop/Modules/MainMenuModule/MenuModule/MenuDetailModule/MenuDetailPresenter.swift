//
//  MenuDetailPresenter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 24.12.2022.
//

import Foundation


//MARK: - MenuDetailPresenterProtocol

protocol MenuDetailPresenterProtocol: AnyObject {
    init(view: MenuDetailViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol)
    var item: MenuCard? { get set }
    func plusButtonTapped()
    func minusButtonTapped()
    func addButtonTapped()
}


//MARK: - MenuDetailPresenter

class MenuDetailPresenter: MenuDetailPresenterProtocol {
    
    //MARK: Variables
    
    weak var view     : MenuDetailViewProtocol?
    let router        : MainRouterProtocol?
    let dataManager   : DataManagerProtocol?
    var item          : MenuCard?
    
    //MARK: - Init
    
    required init(view: MenuDetailViewProtocol, dataManager: DataManagerProtocol, router: MainRouterProtocol) {
        self.view          = view
        self.dataManager   = dataManager
        self.router        = router
    }
    
    
    //MARK: - Methods
    
    func plusButtonTapped() {
        //
    }
    
    func minusButtonTapped() {
        //
    }
    
    func addButtonTapped() {
        //
    }
}
